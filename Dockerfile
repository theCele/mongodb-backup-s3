FROM mongo:5.0

RUN apt-get update && apt-get -y install cron awscli

ENV CRON_TIME="0 3 * * *" \
  TZ=GB \
  CRON_TZ=GB

ADD run.sh /run.sh
CMD ["sh", "./run.sh"]
