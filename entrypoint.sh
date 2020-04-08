#!/bin/sh

cd "$GITHUB_WORKSPACE"

export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

ktlint --reporter=checkstyle \
  | reviewdog --relative -f=checkstyle -name="ktlint" -reporter="${INPUT_REPORTER}" -level="${INPUT_LEVEL}"
