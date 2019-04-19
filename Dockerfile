FROM ubuntu:xenial
MAINTAINER Fabiano Menegidio <fabiano.menegidio@biology.bio.br>

############### Environment config
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV TERM xterm

ADD ./start.sh /
ADD ./startStack.sh /
ADD config /config
ADD supervisord.conf /etc/supervisor/conf.d/easyengine.conf

## Get and install EasyEngine
RUN apt-get update && apt-get install --no-install-recommends -y apt-utils \
	wget git curl vim bzip2 bash apt-transport-https inotify-tools \
    	sed grep zip ca-certificates build-essential xterm locales gnupg \
	nano pwgen supervisor \
	&& locale-gen en_US.UTF-8 \
    	&& git config --global user.email "mail@example.com" \
	&& git config --global user.name "admin" \
   	&& wget -qO ee rt.cx/ee && bash ee \
	&& ee stack install --web \
	&& apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& chmod +x /start.sh && chmod +x /startStack.sh && mkdir -p /config/supervisord

############### http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8
ENV LANG C.UTF-8
	
## Source auto completion
CMD "source /etc/bash_completion.d/ee_auto.rc"

# Define default command.
EXPOSE 80
EXPOSE 443
EXPOSE 6000
VOLUME ["/etc/supervisor/conf.d/", "/.config/"]

ENTRYPOINT /start.sh
