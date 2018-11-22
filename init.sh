sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-django.py /etc/gunicorn.d/gunicorn-django.py
sudo gunicorn -c /home/box/web/etc/gunicorn-django.py ask.wsgi:application
﻿sudo /etc/init.d/mysql start
