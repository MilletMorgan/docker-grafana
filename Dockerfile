# MySql
FROM python:3.7-alpine

RUN mkdir /var/lib/mysql/ && chmod -R 755 /var/lib/mysql/


# Grafana
FROM grafana/grafana

COPY ./grafana/provisioning /etc/grafana/provisioning


# Prometheus
FROM prom/prometheus

ADD prometheus/prometheus.yml /etc/prometheus/

# Redis
FROM redis

COPY redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]


# NodeJS
FROM node:15.8.0

ENV NODE_ENV=development

RUN mkdir -p /usr/src/app/node_modules

WORKDIR /usr/src/app

COPY ./backend/package*.json ./

RUN npm install

COPY ./backend/ .

EXPOSE 3001:3001

CMD [ "npm", "start" ]