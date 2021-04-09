FROM postgres:11

RUN apt-get update 
RUN apt-get install --assume-yes --no-install-recommends --no-install-suggests \
  bison \
  build-essential \
  ca-certificates \
  flex \
  git \
  postgresql-plpython3-11 \
  postgresql-server-dev-11 \
  wget

#RUN git clone https://github.com/apache/incubator-age /age
RUN wget https://github.com/apache/incubator-age/archive/refs/tags/0.4.0.tar.gz
RUN tar -zxvf 0.4.0.tar.gz

RUN cd /incubator-age-0.4.0 && make install && cd .. && rm -rf incubator-age-0.4.0 0.4.0.tar.gz