FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.30.11 kubectl-1.30.11 kubelet-1.30.11
