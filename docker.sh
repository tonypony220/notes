#https://gist.github.com/BretFisher/5e1a0c7bcca4c735e716abf62afad389
#https://github.com/moby/moby/blob/10c0af083544460a2ddc2218f37dc24a077f7d90/docs/reference/commandline/images.md#filtering
#https://stackoverflow.com/questions/41935435/understanding-volume-instruction-in-dockerfile
#https://serverfault.com/questions/599103/make-a-docker-application-write-to-stdout/634296#634296
#https://www.cloudsavvyit.com/14114/how-to-connect-to-localhost-within-a-docker-container/
#https://github.com/lifeeric/docker-cheat-sheet
#loggin https://stackoverflow.com/questions/38567355/docker-compose-global-level-logging

docker inspect -f "{{json .Mounts}}" vol-test | jq .


docker build -t stark .

# clear containers 
docker rm -f $(docker ps -aq)
#To delete all containers including its volumes use,
docker rm -vf $(docker ps -aq)

# clear images 
docker image rm $(docker image ls -f dangling=true -q)

# go to container
docker exec -it $(docker ps -q) /bin/bash


#To delete all the images,

docker rmi -f $(docker images -aq)

docker system prune -a

docker build -t sample .
#---------------------------------   VOLUMES   ---------------------------------  
# BIND MOUNTS	https://docs.docker.com/storage/bind-mounts/
# VOLUMES	  	https://docs.docker.com/engine/reference/builder/#volume 
#			  	https://docs.docker.com/storage/volumes/#adding-a-data-volume
# https://stackoverflow.com/questions/42848279/how-to-mount-volume-from-container-to-host-in-docker
# https://stackoverflow.com/questions/25311613/docker-mounting-volumes-on-host

#Dockerfile
	#FROM alpine:latest
	#RUN mkdir /myvolume
	#VOLUME /myvolume
	#ENTRYPOINT ["tail", "-f", "/dev/null"]

#VOLUME in Docker file: 
	#without -v just creates vol somewhere. not deletes after rm of container
	#with -v and named creates named.		not deletes after rm of container

									
	docker run -d -v $(pwd)/here:/hello --name cont sample
	#"Mounts": [
				#{
					#"Type": "volume",
					#"Name": "439b5b782e6962ac177cad1bbdde46e70dabf1d6f8a4533ae812f7985a676a31",
#this path on linux  "Source": "/var/lib/docker/volumes/439b5b782e6962ac177cad1bbdde46e70dabf1d6f8a4533ae812f7985a676a31/_data",
#i.e. VM if macOS    "Destination": "/myvolume",
					#"Driver": "local",
					#"Mode": "",
					#"RW": true,
					#"Propagation": ""
				#},

	docker run -d -v $(pwd)/here:/myvolume --name cont sample
	#binded. over writes VOLUME directive
	#data from host overwrote all
	#"Mounts": [
            #{
                #"Type": "bind",
                #"Source": "/Users/tonypony/stark/dirDockerfile/here",
                #"Destination": "/myvolume",
                #"Mode": "",
                #"RW": true,
                #"Propagation": "rprivate"
            #}
        #],

#Dockerfile
	#FROM alpine:latest
	#RUN mkdir /myvolume
	#ENTRYPOINT ["tail", "-f", "/dev/null"]

	#docker run -d -v $(pwd)/here:/myvolume --name cont sample
	#just overwrites
