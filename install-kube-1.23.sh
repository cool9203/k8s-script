sudo apt-get update
#下載 Google Cloud 公開簽名密鑰:
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
#添加 Kubernetes apt 倉庫：
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
#更新 apt 包索引，安裝 kubelet、kubeadm 和 kubectl，並鎖定其版本：
sudo apt-get update
sudo apt-get install -y kubelet=1.23 kubeadm=1.23 kubectl=1.23
sudo apt-mark hold kubelet kubeadm kubectl