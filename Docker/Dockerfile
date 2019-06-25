FROM mono:5.20

RUN apt-get update && apt-get -y install wget

RUN wget https://github.com/genielabs/HomeGenie/releases/download/v1.3-stable.5/homegenie_1.3-stable.5.tgz

RUN tar xzf homegenie_1.3-stable.5.tgz

CMD [ "mono",  "/homegenie/HomeGenie.exe" ]


