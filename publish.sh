#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
cd "${SCRIPT_DIR}"

rm printful_client-*.gem
gem build printful_client.gemspec
gem push printful_client-*.gem
