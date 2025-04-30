FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.33.0 kubectl-1.33.0 kubelet-1.33.0
