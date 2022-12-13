FROM node:10-alpine
RUN mkdir -p /node/weather-app
WORKDIR /node/weather-app
COPY package*.json ./
RUN cd /node/weather-app
RUN npm install bcrypt --save
ARG application_version=1
ENV NODE_ENV production
COPY . /var/weather-app
WORKDIR /var/weather-app
COPY . .
EXPOSE 3000
ENTRYPOINT ["./bin/www"]
CMD "npm start"
