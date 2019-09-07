FROM mono:5.20

RUN apt-get update && apt-get -y install wget locales nano

RUN wget https://github.com/genielabs/HomeGenie/releases/download/v1.3-stable.5/homegenie_1.3-stable.5.tgz

RUN tar xzf homegenie_1.3-stable.5.tgz

# Homegenie.exe is build from here :
# https://github.com/mtudury/HomeGenie/tree/feature/mqttpersistentclient
# fork with more features using MQTT and allow raw .net class programs

COPY HomeGenie.exe /homegenie/HomeGenie.exe

RUN echo "Europe/Paris" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen && \
    echo 'LANG="en_US.UTF-8"'>/etc/default/locale && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD [ "mono",  "/homegenie/HomeGenie.exe" ]


