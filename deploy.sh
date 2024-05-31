docker stop phpapp
docker rm phpapp
docker image rmi -f chinsonita/phpproject:latest
docker compose --file /root/deploy/phpproject/docker-compose.yml up -d
