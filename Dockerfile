FROM lachlanevenson/k8s-kubectl:v1.7.11

RUN apk update && apk add bash jq curl python py-pip

ADD awslogs.conf.dummy /
ENTRYPOINT [""]

# RUN cd / ; curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O
# RUN python /awslogs-agent-setup.py -n -r ap-southeast-2 -c ./awslogs.conf.dummy

# ADD run-services.sh /
# RUN chmod a+x /run-services.sh
# CMD /run-services.sh
