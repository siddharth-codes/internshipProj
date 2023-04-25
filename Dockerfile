FROM ubuntu:latest 
RUN apt update 
RUN apt install nodejs -y
RUN apt install npm -y

WORKDIR /usr/local/
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm","run","dev"]