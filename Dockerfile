FROM centos:7.6.1810
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.13.9
