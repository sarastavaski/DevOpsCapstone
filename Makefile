setup:
	python3 -m venv ~/capstone && source ~/capstone/bin/activate

# install:
# 	# This should be run from inside a virtualenv
# 	pip install --upgrade pip &&\
# 		pip install -r requirements.txt

lint:
	hadolint Dockerfile

all: install test lint