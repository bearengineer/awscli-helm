FROM alpine

MAINTAINER Vasco Santos <jvosantos@gmail.com>

ARG AWS_VERSION="1.16.234"
ARG HELM_VERSION="v2.14.3"

RUN apk update \
 &&  apk add ca-certificates curl py-pip py2-pip git \
 &&  pip install --upgrade pip "awscli==${AWS_VERSION}" \
 &&  curl --silent -L https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar xz -C /tmp \
 &&  mv /tmp/linux-amd64/helm /usr/local/bin/helm \
 &&  chmod +x /usr/local/bin/helm \
 &&  curl --silent -L https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator \
 &&  chmod +x /usr/local/bin/aws-iam-authenticator \
 &&  rm /var/cache/apk/* \
 &&  rm -rf /tmp/*

