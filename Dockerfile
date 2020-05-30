FROM python:3.8-alpine

RUN apk update \
  && apk add --virtual .build-deps gcc python3-dev musl-dev \
  && apk add postgresql-dev \
  && pip install psycopg2 \
  && apk del .build-deps \
  && rm -rf /var/cache/apk/*
