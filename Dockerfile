FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.29.10 kubectl-1.29.10 kubelet-1.29.10
