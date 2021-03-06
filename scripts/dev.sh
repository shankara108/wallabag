#!/usr/bin/env bash
# You can execute this file to install wallabag dev environment
# eg: `sh dev.sh`

COMPOSER_COMMAND='composer'
REQUIRE_FILE='scripts/require.sh'

if [ ! -f "$REQUIRE_FILE" ]; then
  echo "Cannot find $REQUIRE_FILE"
  exit 1
fi

. "$REQUIRE_FILE"

$COMPOSER_COMMAND install
php bin/console wallabag:install
php bin/console server:run
