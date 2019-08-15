FROM centos:latest
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]

RUN yum -y install net-tools bind-utils bzip2 tar vim; yum clean all
ADD vimrc /etc/vimrc
RUN mv /bin/vi /bin/vi.org; ln -s /bin/vim /bin/vi

ADD bashrc /tmp
RUN cat /tmp/bashrc >> /etc/bashrc; rm -f /tmp/bashrc

RUN yum -y install openssh-server; yum clean all;
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "root:hello" | chpasswd
RUN systemctl enable sshd
EXPOSE 22

CMD ["/usr/sbin/init"]
