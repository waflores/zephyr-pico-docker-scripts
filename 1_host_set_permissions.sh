# add host user to docker group so we can run docker scripts without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
