FROM gcr.io/config-management-release/policy-controller-validate
VOLUME /k8s
COPY ./policy.yaml .
ENTRYPOINT ["/bin/sh", "validate.sh"]