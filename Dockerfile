FROM python:3.6-stretch

COPY requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt
RUN apt update
RUN apt install -y latexmk xzdec 
RUN apt install -y texlive-full

WORKDIR /app
