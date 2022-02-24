FROM centos:7
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.23.4
