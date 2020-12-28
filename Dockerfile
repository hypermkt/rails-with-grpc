# https://cloud.google.com/appengine/docs/flexible/custom-runtimes/build
FROM ruby:2.6.6

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential

# Bundlerのインストール
RUN gem install bundler

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY . /app

EXPOSE 8080

CMD ["/bin/sh", "bootstrap.sh"]