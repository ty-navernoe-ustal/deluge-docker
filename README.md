build
```	
docker build -t deluge .
```
run
```	
docker run \
--restart=unless-stopped \
--detach \
--name deluge \
--publish 8112:8112 --publish 55055:55055 --publish 58846:58846 --publish 55055:55055/udp \
--volume /media/store/deluge:/config \
--volume /media/store/downloads:/downloads \
--volume /media/store/video:/video \
deluge
```
