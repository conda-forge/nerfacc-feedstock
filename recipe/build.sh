#!/bin/bash

set -eu

if [[ "${cuda_compiler_version}" == "13.0" ]]; then
  export TORCH_CUDA_ARCH_LIST="7.5;8.0;9.0"
else
  export TORCH_CUDA_ARCH_LIST="7.0;8.0;9.0"
fi

$PYTHON -m pip install . -vv --no-deps --no-build-isolation
