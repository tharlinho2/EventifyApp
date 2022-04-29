FROM ruby:2.7.4
RUN apt-key adv --fetch-keys https://dl.yarnpkg.com/debian/pubkey.gpg
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm libpq-dev postgresql-client
RUN npm install -g yarn
RUN mkdir /usr/src/EventifyApp
WORKDIR /usr/src/EventifyApp
ADD . /usr/src/EventifyApp
RUN gem install bundler -v 2.3.12
RUN bundle install