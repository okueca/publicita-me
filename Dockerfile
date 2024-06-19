FROM ruby:3.0-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /docker/app

COPY Gemfile* ./data/coolify/applications/ksc08cs/

RUN bundle install

ADD ./data/coolify/applications/ksc08cs/ /docker/app

RUN gem install bundler

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

CMD [ "bundle","exec", "puma", "config.ru"] # CMD ["rails","server"] # you can also write like this.