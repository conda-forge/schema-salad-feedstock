#!/bin/bash

set -eux # Abort on error.

PY_ABIFLAGS=$(python -c "import sys; print('' if sys.version_info.major == 2 else sys.abiflags)")
PY_ABI=${PY_VER}${PY_ABIFLAGS}


SCHEMA_SALAD_USE_MYPYC=1 MYPYPATH=mypy-stubs python -m pip install . --no-deps -vv