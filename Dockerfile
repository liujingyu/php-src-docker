FROM centos:7

RUN yum -y update
RUN yum -y install vim gcc rsync  openssh-server wget  git make autoconf glibc gcc-c++  bison libmcrypt-devel mhash-devel libxslt-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glibc-devel glib2 glib2-devel bzip2 bzip2-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel libcurl-devel gd gd-devel libtool libcrypt tree net-tools lsof strace tcpdump nc telnet perf
RUN yum -y install gdb
#RUN yum -y install https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/r/re2c-0.14.3-2.el7.x86_64.rpm
#RUN debuginfo-install -y glibc-2.17-292.el7.x86_64 nss-softokn-freebl-3.44.0-8.el7_7.x86_64
#RUN debuginfo-install -y keyutils-libs-1.5.8-3.el7.x86_64 krb5-libs-1.15.1-37.el7_7.2.x86_64 libcom_err-1.42.9-16.el7.x86_64 libselinux-2.5-14.1.el7.x86_64 libxml2-2.9.1-6.el7_2.3.x86_64 openssl-libs-1.0.2k-19.el7.x86_64 pcre-8.32-17.el7.x86_64 xz-libs-5.2.2-1.el7.x86_64 zlib-1.2.7-18.el7.x86_64

#COPY cd /usr/local/src

#RUN git clone https://github.com/php/php-src
#
#RUN cd /usr/local/src/php-src && git checkout PHP-7.1 && ./buildconf  && ./configure  --enable-sockets --with-openssl --enable-debug --prefix=$HOME/myphp  CFLAGS="-g3 -O0 -gdwarf-4" && make && make install
#
#RUN echo "export PATH=$PATH:/root/myphp/bin" >> ~/.bashrc

WORKDIR /root

CMD ["/usr/sbin/sshd", "-D"]

