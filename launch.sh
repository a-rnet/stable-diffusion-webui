#!/bin/bash
cd "$(dirname "$0")"
git submodule update --init --recursive
source venv/bin/activate
python webui.py --no-download-sd-model --enable-insecure-extension-access --skip-torch-cuda-test --no-half-vae --medvram "$@"
deactivate