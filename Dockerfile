FROM centos:8.1.1911
COPY kubernetes.repo /etc/yum.repos.d
COPY kubeadm.conf.old /root/
COPY convert.sh /root/
RUN yum -y install kubeadm-1.17.4
