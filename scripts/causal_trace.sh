#!/bin/bash

# Start from parent directory of script
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)
cd "$(dirname ${SCRIPT_DIR})"

python -m experiments.causal_trace --model_name "gpt2-large" --replace 1
python -m experiments.causal_trace --model_name "gpt2-medium" --replace 1
python -m experiments.causal_trace --model_name "gpt2-xl" --replace 1
python -m experiments.causal_trace --model_name "EleutherAI/gpt-j-6B" --replace 1
python -m experiments.causal_trace --model_name "EleutherAI/gpt-neox-20b" --replace 1
