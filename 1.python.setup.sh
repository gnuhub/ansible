#!/usr/bin/env bash
python_env_name=ansible_debug
if [ ! -d /Volumes/data/anaconda/envs/${python_env_name} ];then
  conda create -y -n ${python_env_name} python=3.6.6
fi
source activate ${python_env_name}

which python
python --version

pip install --upgrade pip
python setup.py develop
conda env export -n ${python_env_name} > ${python_env_name}.yaml