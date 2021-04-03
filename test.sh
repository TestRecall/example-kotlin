#!/bin/bash

export TR_UPLOAD_TOKEN="KczmtsIJyhCuEilhWQDdkQAMCjMVYU"

set -e

trap 'testrecall-reporter' EXIT

./gradlew test
