FROM node:alpine as frontend
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]

# FROM python:3.9-slim-buster as backend
# WORKDIR /app
# COPY requirements.txt ./
# RUN pip install -r requirements.txt
# COPY . .
# CMD ["python", "app.py"]