#! /usr/bin/env bash

/opt/python/3.7/bin/python3 manage.py migrate
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@myproject.com', 'Password1')" | /opt/python/3.7/bin/python3 manage.py shell
