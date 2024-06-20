FROM ruby:3.0-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /docker/app

ENV GIT_ACCESS_TOKEN='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' 

RUN git clone https://ariclinis:${GIT_ACCESS_TOKEN}@github.com/okueca/publicita-me.git /docker/app

COPY Gemfile* ./

RUN bundle install

ADD . /docker/app

RUN gem install bundler

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

CMD [ "bundle","exec", "puma", "config.ru","&&", "ll", "pwd"]#CMD ["rails","server"] # you can also write like this.