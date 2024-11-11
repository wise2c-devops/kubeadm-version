FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.28.15 kubectl-1.28.15 kubelet-1.28.15
