#!/bin/bash

set -e

source .venv/bin/activate

python hello.py
typst compile cover.ty