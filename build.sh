#!/usr/bin/env bash
set -euo pipefail

NAME="${NAME:-X}"
mkdir -p dist
sed "s/{{NAME}}/${NAME}/g" web/index.template.html > dist/index.html
tar -czf dist/site.tar.gz -C dist index.html
echo "Built artifact: dist/site.tar.gz"
