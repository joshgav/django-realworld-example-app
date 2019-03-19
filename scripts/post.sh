#! /usr/bin/env bash

python=/opt/python/3.7/bin/python3
persist=/var/azure/sqlite

touch ${persist}/db.sqlite3
$python manage.py migrate
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'Password1')" | $python manage.py shell
