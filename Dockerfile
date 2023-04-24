FROM mongo:5.0

RUN apt-get update && apt-get -y install cron awscli

ENV CRON_TIME="0 3 * * *" \
  TZ=GB \
  CRON_TZ=GB

COPY ./run.sh /run.sh

RUN chmod +x /run.sh
ENTRYPOINT [ "/bin/sh", "/run.sh" ]