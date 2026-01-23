FROM ruby:4.0.1-trixie

WORKDIR /app

RUN gem install bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 9292

