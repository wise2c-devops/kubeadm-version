FROM centos:7.5.1804
COPY kubernetes.repo /etc/yum.repos.d
COPY kubeadm.conf.old /root/
COPY convert.sh /root/
RUN yum -y install kubeadm-1.13.4
