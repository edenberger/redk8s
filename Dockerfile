FROM ubuntu

RUN apt update ; apt install -y openssh-client curl nmap iproute2 jq python3-pip uuid-runtime netcat-openbsd etcd-client vim nano
RUN mkdir /tools

  # kube-hunter
RUN python3 -m pip install kube-hunter --break-system-packages

  # red-kube
COPY ./tmp/red-kube /tools/red-kube
RUN python3 -m pip install -r /tools/red-kube/requirements.txt --break-system-packages

  # kubesploit
COPY ./tmp/kubesploit /tools/kubesploit

  # Install tools and manifests
COPY ./bin /tools/bin/
COPY ./manifests /tools/manifests/
RUN mv /tools/bin/kubesploit* /tools/kubesploit/
RUN ln -s /tools/bin/* /usr/local/bin/

# Set the ETCD API to 3
ENV ETCDCTL_API 3

CMD ["tail", "-f", "/dev/null"]
