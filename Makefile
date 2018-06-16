lint: flake8 black-check isort-check

flake8:
	flake8 .

black:
	black .

black-check:
	black --diff --check .

isort:
	isort --recursive .

isort-check:
	isort --recursive --check-only .

mypy:
	mypy .

test:
	pytest -v .

build:
	python3 setup.py sdist bdist_wheel

test-upload:
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

upload:
	twine upload dist/*
