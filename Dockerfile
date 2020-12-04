FROM centos:8.1.1911
COPY / /kubeadm-version
RUN if [ `uname -m` = "aarch64" ] ; then \
       cp kubeadm-version/kubernetes_arm64.repo /etc/yum.repos.d; \
    else \
       cp kubeadm-version/kubernetes.repo /etc/yum.repos.d; \
    fi
RUN yum -y install kubeadm-1.19.4
