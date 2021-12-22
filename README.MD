# k8s-script
this repo can quick install k8s worker in ubuntu.
if you want to install master node, you must install another for CNI.

## how to download this repo
```shell=
sudo apt-get install git
git clone https://github.com/cool9203/k8s-script.git
```

## quick install
```shell=
sudo sh install-cri.sh
sudo sh install-kube.sh
```

## install with docker[v20.10.12] and kube[v1.23]
```shell=
sudo sh install-cri-20.10.12.sh
sudo sh install-kube-1.23.sh
```

## note
[note link](https://hackmd.io/RDnubP5DSDCh1yMhvxh3Fw)