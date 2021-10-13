FROM centos
RUN yum install gcc -y
RUN yum install vim -y
COPY hello.s .
COPY array_a.s .
COPY array_a_c.c .
