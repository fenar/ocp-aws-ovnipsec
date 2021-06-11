# Creating OCP Cluster on AWS with OVN IpSec Enabled

If you haven't setup openshift commandline tools yet, please do with sudo :
```
sudo ./00-prereq.sh
```

Cluster create (please follow the step by step guidance with correct selection/credentials):
```
./01-deploy.sh
```

When cluster is up and running you shall have ovn-ipsec daemonset running as well :
![alt text](https://raw.githubusercontent.com/fenar/ocp-aws-ovnipsec/main/images/ovnipsec.png)<br>


Cluster destroy:
```
./03-clean.sh
```


