#!/bin/sh

python manage.py makemigrations --no-input
python manage.py migrate --no-input
python manage.py initadmin
exec gunicorn djangoExcel.wsgi:application --bind 0.0.0.0:8000 --reload
