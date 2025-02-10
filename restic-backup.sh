#!/usr/bin/env bash

set -euo pipefail

backup_dirs=()

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
	-s | --sleep-for)
		sleep_for="$2"
		shift # past argument
		shift # past value
		;;
	-i | --ignore-failures)
		ignore_failures=true
		shift # past argument
		;;
	-d | --delay)
		delay="$2"
		shift # past argument
		shift # past value
		;;
	--* | -*)
		echo "Unknown option $1"
		exit 1
		;;
	*)
		backup_dirs+=("$1") # save positional arg
		shift               # past argument
		;;
	esac
done

if [ "${delay:-none}" != "none" ]; then
	echo Waiting before starting backup...
	sleep "$delay"
fi

function backup() {
	backup_host="$1"
	shift

	echo "Backing up"
	rustic backup \
		--exclude-if-present ".nobackup" \
		--exclude-if-present "CACHEDIR.TAG" \
		--cache-dir "$RESTIC_CACHE_DIR" \
		--password-file "$RESTIC_PASSWORD_FILE" \
		--repository "$(cat "$RESTIC_REPOSITORY_FILE")" \
		--host "$backup_host" \
		--progress-interval "60s" \
		"$@"
}

if [ -n "${sleep_for:-}" ]; then
	while true; do
		if [ "${ignore_failures:-false}" = true ]; then
			backup "$RESTIC_HOST" "${backup_dirs[@]}" || true
		else
			backup "$RESTIC_HOST" "${backup_dirs[@]}"
		fi
		sleep "$sleep_for"
	done
else
	if [ "${ignore_failures:-false}" = true ]; then
		backup "$RESTIC_HOST" "${backup_dirs[@]}" || true
	else
		backup "$RESTIC_HOST" "${backup_dirs[@]}"
	fi
fi
