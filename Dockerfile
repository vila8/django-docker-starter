FROM python:2.7

LABEL version="1.0"
LABEL description="Basic template for Django app, dev environment"

ENV app /site
WORKDIR ${app}

COPY project_name ${app}/project_name
COPY requirements.txt ${app}/requirements.txt
COPY requirements-dev.txt ${app}/requirements-dev.txt
COPY docker-entrypoint.sh ${app}/docker-entrypoint.sh

RUN pip install -r requirements-dev.txt

ENTRYPOINT ["sh", "docker-entrypoint.sh"]
