.ONESHELL:

DJANGO_SETTINGS_MODULE=settings.local


-include User.mk
-include ../User.mk
-include ~/User.mk


.PHONY: all
all:test

.PHONY: test
test:
	poetry run pytest

.PHONY: build
build:
	poetry install --dev

.PHONY: cover
cover:
	poetry run coverage run --source=. --omit="*/test*" -m pytest
	poetry run coverage report -m
	poetry run coverage html
	poetry run coverage lcov

.PHONY: start
start:
	poetry run python manage.py runserver

