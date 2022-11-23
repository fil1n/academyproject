# Dockerfile written for testing script.py

FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt && chmod +x test.py  \
    && apt update -y && apt install -y sqlite3 && sqlite3 main.db < base.sql

CMD [ "python", "-u", "test.py" ]