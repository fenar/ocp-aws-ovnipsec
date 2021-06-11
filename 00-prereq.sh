#!/bin/bash
#Author: fenar
# Download and Install of Openshift Command Line Tools
#
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-install-linux.tar.gz
tar xvf openshift-client-linux.tar.gz
tar xvf openshift-install-linux.tar.gz
sudo mv oc /usr/local/bin
sudo mv kubectl /usr/local/bin
sudo mv openshift-install /usr/local/bin
rm README.md
rm *.gz
