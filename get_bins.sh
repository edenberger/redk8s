#!/usr/bin/env bash
set -eux
DIR="$(realpath "$(dirname $0)")"

  # Auger Docker build is broken
  # ConMaci needs go installed on host to build
test -d $DIR/bin && { set +x ; echo -e '\nbin directory exist, skipping download...\n' ; exit 0; }

  # Cleanup
rm -rf $DIR/tmp/*

  # Init
mkdir -p $DIR/bin/

  # Installing
cp -f $DIR/static/* $DIR/bin/

  # kdigger
wget -P $DIR/bin/ https://github.com/quarkslab/kdigger/releases/download/v1.5.1/kdigger-linux-amd64 -O $DIR/bin/kdigger
  # keyctl-unmask
wget -P $DIR/bin/ https://github.com/antitree/keyctl-unmask/releases/download/latest/keyctl-unmask
  # deepce.sh
wget -P $DIR/bin/ https://github.com/stealthcopter/deepce/raw/main/deepce.sh
  # kubeletctl
wget -P $DIR/bin/ https://github.com/cyberark/kubeletctl/releases/download/v1.11/kubeletctl_linux_amd64 -O $DIR/bin/kubeletctl
  # kubetcd
wget -P $DIR/bin/ https://github.com/nccgroup/kubetcd/releases/download/v1.28/kubetcd_linux_amd64 -O $DIR/bin/kubetcd
  # kubectl
wget -P $DIR/bin/ https://storage.googleapis.com/kubernetes-release/release/v1.21.5/bin/linux/amd64/kubectl
  # AmIcontained
wget -P $DIR/bin/ https://github.com/genuinetools/amicontained/releases/download/v0.4.9/amicontained-linux-amd64 -O $DIR/bin/amicontained
  # botb
wget -P $DIR/bin/ https://github.com/brompwnie/botb/releases/download/1.8.0/botb-linux-amd64 -O $DIR/bin/botb
  # reg
wget -P $DIR/bin/ https://github.com/genuinetools/reg/releases/download/v0.16.1/reg-linux-amd64 -O $DIR/bin/reg

  # etcdctl
wget -P $DIR/tmp/ https://github.com/etcd-io/etcd/releases/download/v3.4.33/etcd-v3.4.33-linux-amd64.tar.gz && \
  tar xf $DIR/tmp/etcd-v3.4.33-linux-amd64.tar.gz -C $DIR/tmp/ && \
  mv $DIR/tmp/etcd-v3.4.33-linux-amd64/etcdctl $DIR/bin/

  # Rakkess
wget -P $DIR/tmp/ https://github.com/corneliusweig/rakkess/releases/download/v0.5.0/rakkess-amd64-linux.tar.gz && \
  tar xf $DIR/tmp/rakkess-amd64-linux.tar.gz -C $DIR/tmp/ && \
  mv $DIR/tmp/rakkess-amd64-linux $DIR/bin/rakkess

  # kubectl-who-can
wget -P $DIR/tmp/ https://github.com/aquasecurity/kubectl-who-can/releases/download/v0.4.0/kubectl-who-can_linux_x86_64.tar.gz && \
  tar xf $DIR/tmp/kubectl-who-can_linux_x86_64.tar.gz -C $DIR/tmp/ && \
  mv $DIR/tmp/kubectl-who-can $DIR/bin/

  # rbac-tool
wget -P $DIR/tmp/ https://github.com/alcideio/rbac-tool/releases/download/v1.19.0/rbac-tool_v1.19.0_linux_amd64.tar.gz && \
  tar xf $DIR/tmp/rbac-tool_v1.19.0_linux_amd64.tar.gz -C $DIR/tmp/ && \
  mv $DIR/tmp/rbac-tool $DIR/bin/

  # red-kube
git -C $DIR/tmp/ clone https://github.com/edenberger/red-kube

  # Finishing up
chmod +x $DIR/bin/*
