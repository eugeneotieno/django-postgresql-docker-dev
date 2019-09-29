# django-postgresql-docker-dev
A docker development environment for Django and postgresql

1. Clone the repo

2. cd into the project

3. To build the image run 
    $ docker-compose run zuri django-admin startproject zuri .

4. Change files ownership
    $ sudo chown -R $USER:$USER .

5. Edit the settings file to connect to database

# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'zuri',
        'USER': 'zuri',
        'HOST': 'db',
        'PORT': 5432,
    }
}

6. Edit the allowed list if necessary:
    ALLOWED_HOSTS = ['*']

7. Start your container:
    $ docker-compose up

8. Test database:
    $ docker-compose run zuri python manage.py migrate

From now onwards you will run django commands after docker-compose run zuri [cmd] or docker-compose exec zuri [cmd]

That’s it for now. Peace Out!