FROM centos:7
RUN touch /etc/yum.repos.d/nginx.repo && echo -e '[nginx]\nname=nage_repo\nbaseurl=http://nginx.org/packages/centos/7/$basearch/\ngpgcheck=0\nenabled=1' > /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx
RUN yum -y install wget net-tools telnet
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

