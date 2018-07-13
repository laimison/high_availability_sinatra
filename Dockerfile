FROM ruby

ENV APP_ROOT /var/www/app

RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT/
RUN bundle install

RUN apt-get update && apt-get install -y nginx

ADD . $APP_ROOT

EXPOSE 80 4567
CMD /etc/init.d/nginx start && bundle exec puma -b tcp://0.0.0.0:4567 -t "0:3"
