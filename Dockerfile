FROM ruby

ENV APP_ROOT /var/www/app

RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT/
RUN bundle install

ADD . $APP_ROOT

EXPOSE 4567
CMD ["bundle", "exec", "puma", "-b", "tcp://0.0.0.0:4567", "-t", "0:3"]
