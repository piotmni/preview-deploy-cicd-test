echo "::group::install dependencies"

sudo apt update
sudo apt install -y wget curl

# install yq
sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq
sudo chmod +x /usr/bin/yq

echo "::endgroup::"
