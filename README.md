# default packages
systemd, net-tools, bind-utils, bzip2, tar, vim, sshd

# run
docker run --privileged --name sshd -d --rm centos:0  # 'privileged' is required to run 'systemctl'

# open bash
docker exec -it sshd bash

winpty docker exec -it sshd bash # if run command on mintty (e.g. cygwin)

# stop & cleanup
docker stop sshd
