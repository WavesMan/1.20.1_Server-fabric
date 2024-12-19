echo 你需要先使用"sudo su root"进入管理员模式
apt update && apt upgrade
apt install openjdk-17-jdk
add-apt-repository ppa:linuxuprising/java
apt update
apt install openjdk-17-jre-headless