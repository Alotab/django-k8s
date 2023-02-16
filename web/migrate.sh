#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"codingctrl@gmail.com"}
cd /app/      # enter into app folder and is where manage.py is located to be able to run migrations/superuser

/opt/venv/bin/python manage.py migrate --noinput     # we migrate before we can create superuser
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true     # creating super user