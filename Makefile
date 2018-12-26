BLACK_CMD=black
BLACK_OPTS=--line-length 79 --skip-string-normalization

pip-compile:
	pip-compile requirements.dev.in > requirements.dev.txt

black:
	$(BLACK_CMD) $(BLACK_OPTS) beancount_ing_diba/
	$(BLACK_CMD) $(BLACK_OPTS) tests/

flake8:
	flake8 beancount_ing_diba/ tests/

py.test:
	py.test tests/

test: flake8 py.test

.PHONY: pip-compile black
