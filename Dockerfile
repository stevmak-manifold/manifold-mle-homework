FROM python:3.9-slim-buster

# run create.sql on init
# ADD create.sql /docker-entrypoint-initdb.d

RUN apt-get update
RUN apt-get -y install gcc cmake git build-essential

WORKDIR /app

COPY ./requirements.txt .
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install -r requirements.txt
