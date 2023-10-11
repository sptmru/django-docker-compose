FROM python:3.11

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./wotoku_web_docker /app
COPY .env /app
COPY .env.dev /app
COPY .env.prod /app

RUN mkdir /app/celery-log

WORKDIR /app

COPY ./entrypoint.sh /