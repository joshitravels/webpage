# specify the node base image with your desired version node:<version>
FROM node:10

WORKDIR /usr/src/app

RUN npm install static-html-server -g

COPY . .

# replace this with your application's default port
EXPOSE 8080

CMD static-html-server -p 8080 -r ./ -f index.html