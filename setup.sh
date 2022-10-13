sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sleep 5
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sleep 5
systemctl enable docker
systemctl start docker




sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sleep 5
sudo chmod +x /usr/local/bin/docker-compose
/usr/local/bin/docker-compose --version
sleep 5

ipadd=`echo $(hostname -I) | awk '{print $1}'`
echo $ipadd
sed -i "s|localhost|$ipadd|g" prometheus/prometheus.yml


