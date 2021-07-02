FROM gcr.io/kpt-dev/kpt:next
RUN apk add --update git docker-cli
VOLUME /k8s
COPY policy.yaml validate.sh /
ENTRYPOINT ["/bin/bash", "-xe", "/validate.sh"]
