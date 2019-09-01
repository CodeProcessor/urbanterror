FROM ubuntu:16.04

RUN useradd -m urt \
&& su - urt

RUN apt update \
&& apt install -y nano \
&& apt install -y unzip \
&& apt install -y wget

WORKDIR /home/urt
#ADD ./UrbanTerror434_full /home/urt/UrbanTerror434_full
ADD ./dep /home/urt

RUN bash download.sh \
&& bash install.sh

EXPOSE 27960:27960

CMD bash /home/urt/run_server.sh
