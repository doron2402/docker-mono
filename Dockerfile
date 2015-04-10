FROM debian

MAINTAINER Doron Segal <doron2402@gmail.com>

RUN apt-get update \
        && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
	&& echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | tee -a /etc/apt/sources.list.d/mono-xamarin.list \
	&& apt-get update \
	&& apt-get clean -y\
        && rm -rf /var/lib/apt/lists/* /var/tmp/*
