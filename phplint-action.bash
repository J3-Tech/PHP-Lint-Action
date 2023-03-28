#!/bin/bash
set -e
github_action_path=$(dirname "$0")

command_string=("parallel-lint")

if [ -n "$ACTION_EXCLUDE" ]
then
	command_string+=(--exclude "$ACTION_EXCLUDE")
fi

docker run --rm \
	--volume "${GITHUB_WORKSPACE}":/app \
	--workdir /app \
	--network host \
	jchellem/php-dev:main-8.1-cli "${command_string[@]}" && echo "PHPMD completed successfully"
