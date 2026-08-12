@echo on
setlocal

set "TORCH_CUDA_ARCH_LIST=7.5;8.0;9.0"
set "MAX_JOBS=1"

"%PYTHON%" -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit /b 1
