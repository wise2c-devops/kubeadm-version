FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.30.5 kubectl-1.30.5 kubelet-1.30.5
