#!/bin/bash
kubeadm config migrate --old-config /root/kubeadm.conf.old --new-config /root/new.yaml
cat /root/new.yaml
