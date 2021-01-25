#!/bin/sh
set -euxo pipefail
cd "$(dirname "$0")"

cp ./.bashrc ~
cp ./.gitconfig ~
