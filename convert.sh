#!/bin/bash
kubeadm config migrate --old-config /root/kubeadm.conf.old --new-config /root/new.conf
cat /root/new.conf
