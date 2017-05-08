FROM continuumio/anaconda

ENV HTTP_PROXY ${HTTP_PROXY}
ENV HTTPS_PROXY ${HTTPS_PROXY}
ENV http_proxy ${HTTP_PROXY}
ENV https_proxy ${HTTPS_PROXY}

COPY apt.conf /etc/apt/apt.conf

RUN apt-get update \
  && apt-get install -y groff

RUN pip install --proxy=$http_proxy awscli
RUN pip install --proxy=$http_proxy boto3

ENTRYPOINT ["/bin/bash"]