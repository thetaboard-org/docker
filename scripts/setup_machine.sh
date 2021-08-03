sudo apt-get update -y
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo groupadd docker
sudo usermod -aG docker $USER

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo apt install nodejs npm -y


docker pull thetalabsorg/edgelauncher_mainnet:v1.0.0

git clone https://github.com/thetaboard-org/edge-node-manager
cd edge-node-manager
npm install
node index
