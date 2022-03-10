FROM ruby:2.6.6
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    node.js \
    default-mysql-client 

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

WORKDIR /product-myrails
COPY Gemfile Gemfile.lock /product-myrails/
RUN bundle install
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]