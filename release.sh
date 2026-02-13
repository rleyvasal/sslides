#!/bin/bash
set -e
nbdev_bump_version
nbdev_export
nbdev_readme
rm -rf dist
python3 -m build --no-isolation
python3 -m twine upload dist/*
