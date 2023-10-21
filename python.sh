#https://stackoverflow.com/questions/22190403/how-could-i-use-requests-in-asyncio
#https://www.dabeaz.com/talks.html
#https://habr.com/ru/post/486202/
#https://stackoverflow.com/questions/59996493/does-await-always-give-other-tasks-a-chance-to-execute
#
#MACOS python
#https://apple.stackexchange.com/questions/237430/how-to-install-specific-version-of-python-on-os-x
#
#
#https://stackoverflow.com/questions/22781872/python-pickle-got-acycle-recursion-with-getattr


# install python
# //////////////////////
V="3.9"
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get install python${V} python3-pip python${V}-dev python${V}-venv -y
sudo ln -s /usr/bin/python${V} /usr/bin/python3
# //////////////////////

python${V} -m venv venv
. venv/bin/activate
pip install -r requirements.txt


V="3.9.12"
sudo apt-get install libssl-dev openssl -y
wget "https://www.python.org/ftp/python/${V}/Python-${V}.tgz"
tar xzvf Python-${V}.tgz
cd Python-${V}
./configure
make
sudo make install


