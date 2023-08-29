#!/bin/bash

### Create user namespace

kubectl create ns company


# https://github.com/kubernetes-sigs/hierarchical-namespaces/releases/

# Select the latest version of HNC
# NOTE: Cannot use v1.1.0 due to libc6 version.
HNC_VERSION=v1.0.0

### Install HNC plugin for kubectl

pushd filesystem/bin


HNC_PLATFORM=linux_amd64 # also supported: darwin_amd64, windows_amd64
curl -L https://github.com/kubernetes-sigs/hierarchical-namespaces/releases/download/${HNC_VERSION}/kubectl-hns_${HNC_PLATFORM} -o ./kubectl-hns
chmod +x ./kubectl-hns

popd


### Apply HNC Controller

# Select the variant of HNC you like. Other than 'default', options include:
# 'hrq': Like default, but with hierarchical quotas.
# 'ha': Like default, but with two deployments: one single-pod for the controller, and one three-pod for the webhooks
# 'default-cm': Like default, but without the built-in cert rotator, and with support for cert-manager
HNC_VARIANT=default

# Install HNC. Afterwards, wait up to 30s for HNC to refresh the certificates on its webhooks.
kubectl apply -f https://github.com/kubernetes-sigs/hierarchical-namespaces/releases/download/${HNC_VERSION}/${HNC_VARIANT}.yaml 

