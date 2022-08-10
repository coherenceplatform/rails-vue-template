FROM ruby:3.1

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle check || bundle install

COPY . /app/

RUN ln -sf /app/migrate_db.sh /usr/bin/migrate_db.sh

CMD ["./entrypoint"]
