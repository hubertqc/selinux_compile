FROM registry.access.redhat.com/ubi9/ubi:latest

RUN dnf install -y selinux-policy-devel make
RUN dnf upgrade -y libsepol

# Script to execute when the docker container starts up
ENTRYPOINT ["make", "-f", "/usr/share/selinux/devel/Makefile"]
