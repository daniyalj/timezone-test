FROM registry.access.redhat.com/rhel7-atomic
RUN rpm -e tzdata-2018g-1.el7.noarch
COPY tzdata-2017c-1.el7.noarch.rpm .
RUN rpm -ivh tzdata-2017c-1.el7.noarch.rpm --replacefiles --replacepkgs
CMD tail -f /dev/null
USER 1001
