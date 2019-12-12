FROM ubuntu:16.04
#Credit to TA yuawn
MAINTAINER yuawn
RUN sed -i 's/\(archive.ubuntu\|security.ubuntu\)/tw.archive.ubuntu/' /etc/apt/sources.list && apt-get update
RUN apt-get install -y openssh-server && mkdir /var/run/sshd
RUN apt-get install -y sudo && sed -i 's/%sudo.*/%sudo   ALL=(ALL:ALL) NOPASSWD:ALL/' /etc/sudoers
RUN apt-get install -y locales && (echo 149; echo 3) | dpkg-reconfigure locales
RUN apt-get install -y tmux binutils gdb strace ltrace nmap netcat vim
RUN apt-get install -y python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential
RUN pip install --upgrade pwntools
RUN useradd -m yuawn && usermod -aG sudo yuawn && echo /bin/bash | chsh yuawn
CMD ["/usr/sbin/sshd", "-D"]