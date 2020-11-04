FROM python:3.7-slim AS app-3-7
MAINTAINER "Ana Barbosa <ee.anap@gmail.com>"


# Install dependencies
COPY ./requirements /tmp/requirements
RUN pip install -r /tmp/requirements/requirements.txt


COPY . /opt/back
WORKDIR /opt/back/my_web_django_project

ENTRYPOINT python manage.py runserver 0.0.0.0:8000

EXPOSE 8000
