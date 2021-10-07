FROM ubuntu:18.04

RUN apt-get update && \
 apt-get install -y openssh-server

RUN useradd prod_user && \
    echo "prod_user:1234" | chpasswd && \
    mkdir /home/prod_user/.ssh -p && \
    chmod 700 /home/prod_user/.ssh && \
    mkdir -p -m0755 /var/run/sshd

COPY prod.pub /home/prod_user/.ssh/authorized_keys

RUN chown prod_user:prod_user   -R /home/prod_user && \
    chmod 400 /home/prod_user/.ssh/authorized_keys

# CMD /usr/sbin/sshd -D

RUN apt-get update && \
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \ 
    chmod +x /usr/local/bin/docker-compose 


RUN service docker start 

CMD /usr/sbin/sshd -D
