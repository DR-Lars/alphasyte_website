FROM node:latest

WORKDIR /app

COPY . .
RUN npm install

CMD npm run build
EXPOSE 80
