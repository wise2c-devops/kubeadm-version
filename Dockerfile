FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.31.2 kubectl-1.31.2 kubelet-1.31.2
