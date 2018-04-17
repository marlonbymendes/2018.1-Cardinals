#!/bin/bash

# Django
python manage.py makemigrations
python manage.py migrate

# Code test coverage
coverage run --source='.' manage.py test
coverage report

# Integrate coverage with codecov
codecov -t 4bbc492c-d908-4f02-8595-8a510df37ef3

# Flake8
flake8 .
