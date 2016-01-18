#Maintainer: Mozzie <heyitsmozzie@gmail.com>
FROM python:3-alpine
RUN pip install awscli
VOLUME /root/.aws
ENTRYPOINT ["aws"]