sudo apt-get install -y software-properties-common apt-transport-https ca-certificates curl

## 如果以下這一行說只有root才能執行，那請輸入sudo su，然後輸入該指令，接著按下ctrl+d來退出root
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
### Add docker apt repository.
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install docker-ce=5:20.10.12~3-0~ubuntu-bionic

## Setup daemon.
## Log 的大小, Storage Driver
### 如果以下這一行說只有root才能執行，那請輸入sudo su，然後輸入該指令，接著按下ctrl+d來退出root
sudo mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo mkdir -p /etc/systemd/system/docker.service.d

## Restart docker.
sudo systemctl enable docker
sudo systemctl daemon-reload
sudo systemctl restart docker