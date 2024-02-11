FROM almalinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.25.16 kubectl-1.25.16 kubelet-1.25.16
