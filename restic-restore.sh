#!/usr/bin/env bash

set -euo pipefail

restore_dirs=()

RESTIC_CACHE_DIR="${RESTIC_CACHE_DIR:-/cache}"
RESTIC_PASSWORD_FILE="${RESTIC_PASSWORD_FILE:-/restic-secret/password}"
RESTIC_REPOSITORY_FILE="${RESTIC_REPOSITORY_FILE:-/restic-secret/repository}"

while [[ $# -gt 0 ]]; do
	case $1 in
	-r | --repository-file)
		RESTIC_REPOSITORY_FILE="$2"
		shift # past argument
		shift # past value
		;;
	-p | --password-file)
		RESTIC_PASSWORD_FILE="$2"
		shift # past argument
		shift # past value
		;;
	-h | --host)
		RESTIC_HOST="$2"
		shift # past argument
		shift # past value
		;;
	-c | --cache-dir)
		RESTIC_CACHE_DIR="$2"
		shift # past argument
		shift # past value
		;;
	--* | -*)
		echo "Unknown option $1"
		exit 1
		;;
	*)
		restore_dirs+=("$1") # save positional arg
		shift                # past argument
		;;
	esac
done

function restic_restore() {
	restore_path="$1"
	SNAPSHOT="${2:-latest}"
	rustic restore \
		--dry-run \
		--cache-dir "$RESTIC_CACHE_DIR" \
		--password-file "$RESTIC_PASSWORD_FILE" \
		--repository "$(cat "$RESTIC_REPOSITORY_FILE")" \
		--filter-host "$RESTIC_HOST" \
		"$SNAPSHOT:$restore_path" \
		"$restore_path"
	rustic restore \
		--cache-dir "$RESTIC_CACHE_DIR" \
		--password-file "$RESTIC_PASSWORD_FILE" \
		--repository "$(cat "$RESTIC_REPOSITORY_FILE")" \
		--filter-host "$RESTIC_HOST" \
		"$SNAPSHOT:$restore_path" \
		"$restore_path"

	if [ -f "$restore_path/restore-to" ]; then
		rm -v "$restore_path/restore-to"
	fi
}

function has_some_restores() {
	restore_path="$1"

	if [ "$(
		rustic snapshots \
			--filter-host "$RESTIC_HOST" \
			--cache-dir "$RESTIC_CACHE_DIR" \
			--password-file "$RESTIC_PASSWORD_FILE" \
			--repository "$(cat "$RESTIC_REPOSITORY_FILE")" --json |
			jq length
	)" -gt "0" ]; then
		return 0
	else
		return 1
	fi
}

function restore_if_needed() {
	restore_path="$1"

	if [ "0" -eq "$(find "$restore_path" -type f -print -quit | wc -l)" ]; then
		echo "No data found in \"$restore_path\", looking for a snapshot"

		if has_some_restores "$restore_path"; then
			echo "Snapshots found, restoring..."
			restic_restore "$restore_path"
		else
			echo "No snapshots, must be totally new!"
			echo "Hallo, welt!"
		fi
	elif [ -f "$restore_path/restore-to" ] && [ -n "$(cat "$restore_path/restore-to")" ]; then
		echo "Restore marker found in \"$restore_path\", restoring $(cat "$restore_path/restore-to")"
		restic_restore "$restore_path" "$(cat "$restore_path/restore-to")"
	elif [ -n "${RESTORE_TO:-}" ]; then
		echo "Restore marker found in \"$restore_path\", restoring $RESTORE_TO"
		restic_restore "$restore_path" "$RESTORE_TO"
	else
		echo "Not running a restore for \"$restore_path\""
	fi
}

for restore_dir in "${restore_dirs[@]}"; do
	restore_if_needed "$restore_dir"
done
