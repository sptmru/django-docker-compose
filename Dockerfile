FROM python:3.11

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./django_project /app

WORKDIR /app

COPY ./entrypoint.sh /