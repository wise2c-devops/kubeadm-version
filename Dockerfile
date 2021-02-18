FROM centos:8.1.1911
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.19.8
