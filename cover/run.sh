#!/bin/bash

set -e

source .venv/bin/activate

python cover.py
typst compile cover.ty