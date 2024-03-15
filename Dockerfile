FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.26.14 kubectl-1.26.14 kubelet-1.26.14
