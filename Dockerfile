#tested with centos:7.4.1708
FROM centos:latest 

RUN yum install -y buildah skopeo bind-utils telnet nmap nc net-tools iperf3 tcpdump bridge-utils iptables iputils iproute strace curl ethtool ipvsadm conntrack-tools socat tcptraceroute mtr iptraf-ng python2 vim perl \
  && yum install -y https://lsm5.fedorapeople.org/centos-release-container-1-3.el7.noarch.rpm \
  && yum install -y cri-o buildah 

CMD tail -f /dev/null
