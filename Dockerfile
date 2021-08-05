FROM centos:8
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.22.0
