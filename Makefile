NAMEBLUE = mohanadmahmoud98/capstoneblue
DockerfileBLUE=Dockerfileblue
NAMEGREEN = mohanadmahmoud98/capstonegreen
DockerfileGREEN=Dockerfilegreen
VERSION = latest
setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfileblue
	hadolint Dockerfilegreen
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	#pylint --disable=R,C,W1203 app.py
buildpushblue: 
	docker build -f ${DockerfileBLUE}  -t $(NAMEBLUE) .
	docker tag $(NAMEBLUE) $(NAMEBLUE):$(VERSION)
	docker push $(NAMEBLUE)
buildpushgreen: 
	docker build -f ${DockerfileGREEN}  -t $(NAMEGREEN) .
	docker tag $(NAMEGREEN) $(NAMEGREEN):$(VERSION)
	docker push $(NAMEGREEN)
all: install lint test
