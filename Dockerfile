FROM gcr.io/config-management-release/policy-controller-validate
RUN apk update
RUN apk add --update git
COPY --from=gcr.io/kpt-dev/kpt:next /usr/local/bin/kpt ./
VOLUME /k8s
COPY . ./
#ENTRYPOINT ["/bin/sh", "validate.sh"]
