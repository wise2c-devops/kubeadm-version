FROM oraclelinux:9
COPY kubernetes.repo /etc/yum.repos.d
RUN yum -y install kubeadm-1.30.0 kubectl-1.30.0 kubelet-1.30.0
