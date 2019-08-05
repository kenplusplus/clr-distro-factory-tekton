# modified from https://github.com/clearlinux/clr-distro-factory/blob/master/.travis/Dockerfile
FROM clearlinux:latest
LABEL maintainer="ken.lu@intel.com"

RUN swupd bundle-add --quiet make network-basic mixer clr-installer
RUN swupd clean --quiet

ARG UID=1000
RUN useradd -G wheelnopw --uid ${UID} -U -m builder

# add wheelnopw into sudoers list for silent build
RUN echo "%wheelnopw ALL=(ALL) NOPASSWD: ALL" > /usr/share/defaults/sudo/sudoers.d/builder

USER builder

# Note: the .gitconfig will be generated $HOME directory like /home/builder. 
#       On tekton environment, the $HOME directory is different at /builder/home/
#       So on tekton task, the .gitconfig need be copied from /home/builder to /builder/home
RUN git config --global user.email "travis@ci-container.com"
RUN git config --global user.name "Travis"