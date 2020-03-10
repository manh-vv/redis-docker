FROM ubuntu:18.04

WORKDIR app

COPY config config

COPY src src
RUN pwd
RUN ls
#RUN ls ./src

ENTRYPOINT [ "./src/redis-server" ]
CMD [ "/app/config/redis.conf" ]

EXPOSE 6379

VOLUME /app/config
