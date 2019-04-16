FROM ubuntu:18.04

ENV DOOCSARCH=Ubuntu-18.04-x86_64

RUN apt-get update && apt-get install -y build-essential libldap2-dev git meson && \
    git clone http://doocs-git.desy.de/cgit/doocs/$DOOCSARCH.git doocs/$DOOCSARCH && \
    git clone http://doocs-git.desy.de/cgit/doocs/library/common/gul.git doocs/library/common/gul && \
    git clone http://doocs-git.desy.de/cgit/doocs/library/common/clientlib.git doocs/library/common/clientlib && \
    cd doocs/library/common/gul && make localinstall && \ 
    cd /doocs/library/common/clientlib && sed -i '/\t$(OBJDIR)\/libTTFapi./d' Makefile && make localinstall

ENTRYPOINT ["/bin/bash", "-c"]
