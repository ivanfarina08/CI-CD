FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV DB_HOST=${{ secrets.DB_HOST }} DB_USER=${{ secrets.DB_USER }} DB_PASSWORD=${{ secrets.DB_PASSWORD }} DB_NAME=${{ secrets.DB_NAME }} DB_PORT=${{ secrets.DB_PORT }}

COPY ./main main

CMD [ "./main" ]