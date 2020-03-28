docker-compose build

docker-compose run --rm app bundle install

docker-compose run --rm app bundle exec rake db:create

docker-compose run --rm app bundle exec rake db:migrate

docker-compose run --rm app bundle exec rails csv:import

docker-compose up

