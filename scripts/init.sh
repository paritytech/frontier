#!/usr/bin/env bash

set -e

echo "*** Initializing WASM build environment"

NIGHTLY=2020-05-14

if [ -z $CI_PROJECT_NAME ] ; then
   rustup update nightly-$NIGHTLY
   rustup update stable
fi

rustup target add wasm32-unknown-unknown --toolchain nightly-$NIGHTLY
