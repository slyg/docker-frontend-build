FROM node:5.4.1

# Ruby stuff
RUN apt-get update \
 && apt-get install -y \
    ruby \
    ruby-dev \
 && gem update --system \
 && gem install bundler \
 && bundle install
