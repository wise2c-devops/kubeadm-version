FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.27.13 kubectl-1.27.13 kubelet-1.27.13
