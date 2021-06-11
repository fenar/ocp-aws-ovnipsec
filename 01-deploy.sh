#!/bin/bash
#Author: fenar
echo -e "Creating AWS OCP Cluster Manifests\n"
cp config/install-config.yaml.bak install-config.yaml
openshift-install create manifests
echo -e "Copying Add-On OVN IPSec Manifests\n"
cp config/cluster-network-03-config.yml manifests/cluster-network-03-config.yml
cp config/cluster-ingress-default-ingresscontroller.yaml manifests/cluster-ingress-default-ingresscontroller.yaml
echo -e "Creating AWS OCP Cluster\n"
openshift-install create cluster --log-level=info
