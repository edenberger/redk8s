# redk8s
Collection of k8s exploitation tools in an Ubuntu container

Heavly changed from [alpine-containertools](https://github.com/raesene/alpine-containertools.git).

## The tools that were added to this image
```
amicontained
auger
botb
conmachi
deepce.sh
escape.sh
etcdctl
kdigger
keyctl-unmask
kubectl
kubectl-who-can
kubeletctl
kubetcd
rakkess
rbac-tool
reg
kube-hunter
red-kube
```
## Preprequisites to build this image on Ubuntu
```
docker.io
make
git
wget
```
## Build and run instructions
```
git clone github.com/edenberger/redk8s
cd redk8s
make build
make run
make exec
```
### If you're running it for the lab github.com/edenberger/kube_security_lab, after you set up the lab, run
```
git clone github.com/edenberger/redk8s
cd redk8s
make build
make lab
make exec
```
