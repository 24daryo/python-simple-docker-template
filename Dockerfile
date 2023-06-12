FROM --platform=linux/amd64 python:3.11-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME ./app
WORKDIR $APP_HOME
COPY ./src ./

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt