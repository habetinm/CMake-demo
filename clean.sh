#!/bin/bash
set -e

cd "$(dirname "$0")"

rm -rf build
rm -f lib/*.a lib/*.so

echo "Cleaning completed."
