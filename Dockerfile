FROM ubuntu:18.04

COPY run.sh /run.sh

RUN apt-get update \
    && apt-get -y install curl \
    && curl https://s3.ap-northeast-1.amazonaws.com/amazon-ssm-ap-northeast-1/latest/debian_amd64/amazon-ssm-agent.deb -o /tmp/amazon-ssm-agent.deb \
    && dpkg -i /tmp/amazon-ssm-agent.deb \
    && cp /etc/amazon/ssm/seelog.xml.template /etc/amazon/ssm/seelog.xml

CMD ["bash", "run.sh"]
