FROM docker.io/borisnovos/rhel7-minimal:latest

RUN microdnf install -y --enablerepo=rhel-7-server-rpms --enablerepo=rhel-7-server-extras-rpms --enablerepo=rhel-7-server-optional-rpms shadow-utils vim vi less tar unzip wget which gzip tzdata && microdnf install -y --enablerepo=rhel-7-server-rpms --enablerepo=rhel-7-server-extras-rpms --enablerepo=rhel-7-server-optional-rpms java-1.8.0-openjdk-headless --nodocs && microdnf clean all -y
CMD tail -f /dev/null

USER 1001
