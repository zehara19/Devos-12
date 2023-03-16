FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["npm", "start"]

