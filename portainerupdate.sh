sudo docker stop portainer
sudo docker rm portainer
sudo docker pull portainer/portainer-ce
docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443
--name=portainer
-v /var/run/docker.sock:/var/run/docker.sock
-v portainer_data:/data
--restart=always
portainer/portainer-ce