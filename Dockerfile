FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.30.1 kubectl-1.30.1 kubelet-1.30.1
