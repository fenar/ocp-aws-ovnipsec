#!/bin/bash
#Author: fenar
echo -e "Creating AWS OCP Cluster Manifests\n"
if [ ! -f config/install-config.yaml.bak ]; then
    echo "1st run!"
    openshift-install create install-config
    echo -e "Set Network Type: Change from OpenShiftSDN to OVNKubernetes\n"
    sed -i -e 's/OpenShiftSDN/OVNKubernetes/g' install-config.yaml
    cp install-config.yaml config/install-config.yaml.bak
else
    echo "Re-run!"
    cp config/install-config.yaml.bak install-config.yaml
fi
openshift-install create manifests
echo -e "Copying Add-On OVN IPSec Manifests\n"
cp config/cluster-network-03-config.yml manifests/cluster-network-03-config.yml
echo -e "Creating AWS OCP Cluster with OVN+IpSecEnabled\n"
openshift-install create cluster --log-level=info
