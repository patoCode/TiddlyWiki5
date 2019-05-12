FROM node:alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY package.json .
RUN npm install --quiet
COPY . .
EXPOSE 8080
CMD ["node","server"]
