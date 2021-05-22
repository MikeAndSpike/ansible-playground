sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf list docker-ce --showduplicates
sudo dnf install docker-ce
sudo systemctl enable --now docker
sudo systemctl start docker
