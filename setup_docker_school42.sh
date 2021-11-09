rm -rf ~/Library/Containers/com.docker.docker

rm -rf ~/.docker

rm -rf /goinfre/com.docker.docker
rm -rf /goinfre/.docker

mkdir /goinfre/com.docker.docker

mkdir /goinfre/.docker

ln -s /goinfre/com.docker.docker ~/Library/Containers/com.docker.docker

ln -s /goinfre/.docker /Users/$USER/.docker
