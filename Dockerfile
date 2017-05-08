FROM continuumio/anaconda


COPY apt.conf /etc/apt/apt.conf

RUN apt-get update \
  && apt-get install -y groff

RUN pip install --proxy=$http_proxy awscli
RUN pip install --proxy=$http_proxy boto3

ENTRYPOINT ["/bin/bash"]
