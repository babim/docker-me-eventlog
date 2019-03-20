FROM babim/centosbase:7-x86
ENV SOFT	EventLog
ENV EDITTION	pro
ENV SOFT_HOME	/opt/ManageEngine/${SOFT}

# install depend
RUN yum install wget -y

# install
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20ManageEngine/${SOFT}_install.sh | bash

# Set the default working directory as the installation directory.
#WORKDIR ${SOFT_HOME}

VOLUME ["${SOFT_HOME}"]
# Expose default HTTP connector port.
EXPOSE 8400 513/tcp 514/tcp 513/udp 514/udp

ENTRYPOINT ["/docker-entrypoint.sh"]