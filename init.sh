sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo gunicorn --сonfig /etc/gunicorn.d/hello.py hello
sudo gunicorn --config /home/box/web/etc/gunicorn-django.conf ask:wsgi_application
﻿sudo /etc/init.d/mysql start
