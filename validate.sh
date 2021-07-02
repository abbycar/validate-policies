#!/bin/bash -xe
TMP_DIR=$(mktemp -d)
kpt fn source -o unwrap /k8s/ > ${TMP_DIR}/manifests.yaml
cp /policy.yaml ${TMP_DIR}/policy.yaml
kpt fn eval --image gcr.io/kpt-fn/gatekeeper:v0.1 ${TMP_DIR}
