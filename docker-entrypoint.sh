#!/bin/bash

# Navigate to project folder
cd site/project_name

# Database migrations
python manage.py makemigrations
python manage.py migrate

# Collect static elements
python manage.py collectstatic --noinput

# Run server
python manage.py runserver 0.0.0.0:8000
