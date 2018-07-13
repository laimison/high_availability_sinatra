FROM ruby

ENV APP_ROOT /var/www/app

RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT/
RUN bundle install

RUN apt-get update && apt-get install -y nginx

ADD . $APP_ROOT

EXPOSE 80
# Nginx caching server in front and Unix socket to bypass unnecessary TCP/IP (page still can be reached internally with curl --unix-socket /tmp/sinatra.sock http://localhost or using socat command to translate to TCP for tests)
CMD /etc/init.d/nginx start && bundle exec puma -b unix:///tmp/sinatra.sock -t "0:3"
