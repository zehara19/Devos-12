FROM node:14-alpine
FROM nginx:latest
RUN rm -f /usr/share/nginx/html/index.html
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["npm", "start"]
CMD ["nginx", "-g", "daemon off;"]
