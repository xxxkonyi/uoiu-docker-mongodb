FROM daocloud.io/library/mongo:3.2.9
MAINTAINER konyi <xxxkonyi@gmail.com>

ENV AUTH no
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes

ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

EXPOSE 27017 28017

CMD ["/run.sh"]
