FROM python:3.8-slim
RUN apt-get update
RUN apt-get install build-essential -y
RUN pip install Flask
WORKDIR /app

# COPY ./requirements.txt /app/
# RUN pip install -r /app/requirements.txt

COPY ./src/ /app/src

RUN python /app/src/main.py

EXPOSE 4567
