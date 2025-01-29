FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV DB_HOST="" DB_USER="" DB_PASSWORD="" DB_NAME="" DB_PORT=""

COPY main main

CMD [ "./main" ]