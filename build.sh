#!/usr/bin/env bash

rm -vrf ./build ./dist  ./*.pyc ./*.tgz ./*.egg-info

./venv/bin/python setup.py sdist
./venv/bin/pip install wheel
./venv/bin/pip wheel --wheel-dir=./dist ./ --trusted-host pypi.bvrft.cn

# work password is T38SADl89M
scp ./dist/eva-*.whl work@47.99.119.208:/home/work/www/pypi/packages

#pip install wheel twine
#python setup.py bdist_wheel
#twine upload --repository-url http://pypi.bvrft.cn -u Lsiasdf -p O3lsfhMsl dist/distributed_redis_sdk-*.whl
