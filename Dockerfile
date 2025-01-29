FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

COPY . .

CMD [ "DB_HOST=${{ secrets.DB_HOST }} DB_PASSWORD=${{ secrets.DB_PASSWORD }} DB_USER=${{ secrets.DB_USER }} DB_NAME=${{ secrets.DB_NAME }} DB_PORT=${{ secrets.DB_PORT }} ./main" ]