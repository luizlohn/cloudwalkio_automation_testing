
FROM ruby:2.5

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /app/
COPY . /app/
RUN gem install bundle

RUN bundle install
