#docker stop htmlapp
#docker rm htmlapp
#docker image rmi -f chinsonita/sonita-html-app:latest
docker compose --file /root/deploy/phpproject/docker-compose.yml up -d
