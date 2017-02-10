FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.3

RUN gem install dnsbl-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dnsbl-client"]
CMD ["--help"]
