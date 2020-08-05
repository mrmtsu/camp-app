FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /camp-app
COPY Gemfile Gemfile.lock /camp-app/
RUN bundle install
