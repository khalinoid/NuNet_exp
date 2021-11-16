FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential apt-utils
RUN apt-get install -y python-pip 
RUN apt-get install -y python-opencv

RUN mkdir /app
WORKDIR /app

ADD test.py /app
COPY . .
ENTRYPOINT [ "python" ]
CMD ["test.py"]
