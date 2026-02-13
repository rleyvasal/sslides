#!/bin/bash
set -e
nbdev_bump_version
nbdev_export
rm -rf dist
python3 -m build --no-isolation
python3 -m twine upload dist/*
