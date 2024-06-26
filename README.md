# redk8s
Collection of k8s exploitation tools in an Ubuntu container

Heavly changed from [alpine-containertools](https://github.com/raesene/alpine-containertools.git).

## The tools that were added to this image

[amicontained](https://github.com/genuinetools/amicontained) -  Container introspection tool. Find out what container runtime is being used as well as features available.  
[botb](https://github.com/brompwnie/botb) -  A container analysis and exploitation tool for pentesters and engineers.  
[conmachi](https://github.com/nccgroup/ConMachi) - Container Blackbox Security Auditing Tool: enumerates security configuration from within the target container.  
[deepce.sh](https://github.com/stealthcopter/deepce) - Docker Enumeration, Escalation of Privileges and Container Escapes.  
[escape.sh](https://blog.trailofbits.com/2019/07/19/understanding-docker-container-escapes)  
[keyctl-unmask](https://github.com/antitree/keyctl-unmask) -  Going Florida on container keyring masks. A tool to demonstrate the ineffectivity containers have on isolating Linux Kernel keyrings.  
[ed](https://github.com/brompwnie/ed/) -  Ed is a tool used to identify and exploit accessible UNIX Domain Sockets.  
[auger](https://github.com/jpbetz/auger) - Directly access data objects stored in etcd by kubernetes.  
[etcdctl](https://github.com/etcd-io/etcd/blob/main/etcdctl/README.md) - etcdctl is a command line client for etcd.  
[kubectl](https://kubernetes.io/docs/reference/kubectl/) - Command line tool for communicating with a Kubernetes cluster's control plane.  
[kubectl-who-can](https://github.com/aquasecurity/kubectl-who-can) - Show who has RBAC permissions to perform actions on different resources in Kubernetes.  
[kubeletctl](https://github.com/cyberark/kubeletctl) -  A client for kubelet.  
[kubetcd](https://github.com/nccgroup/kubetcd) - Post-exploit a compromised etcd, gain persistence and remote shell to nodes.  
[rakkess](https://github.com/corneliusweig/rakkess) - Review Access: kubectl plugin to show an access matrix for k8s server resources.  
[rbac-tool](https://github.com/alcideio/rbac-tool) - Kubernetes RBAC Power Toys - Visualize, Analyze, Generate & Query.  
[kube-hunter](https://github.com/aquasecurity/kube-hunter) - Hunt for security weaknesses in Kubernetes clusters.  
[red-kube](https://github.com/lightspin-tech/red-kube) - Red Team K8S Adversary Emulation Based on kubectl.  
[reg](https://github.com/genuinetools/reg) - Docker registry v2 command line client and repo listing generator with security checks.  
[kdigger](https://github.com/quarkslab/kdigger) -  Kubernetes focused container assessment and context discovery tool for penetration testing.  

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
