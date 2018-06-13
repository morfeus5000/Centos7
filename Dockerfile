FROM scratch

VOLUME /etc
VOLUME /var
VOLUME /usr
VOLUME /bin

ADD centos-7-docker.tar.xz /

RUN yum update && yum install open-ssh-server

LABEL org.label-schema.schema-version = "1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20180531"

EXPOSE 22

CMD ["/bin/bash"]