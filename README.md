docker-compose build

docker-compose run --rm app bundle install

docker-compose run --rm app bundle exec rake db:create

docker-compose run --rm app bundle exec rake db:migrate

docker-compose run --rm app bundle exec rails csv:import

docker-compose up

## Implantando na Heroku

Clique abaixo para implantar o aplicativo na sua conta na [Heroku](https://www.heroku.com/)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/sergiohc/inep)

Em seguida clique no botão "Deploy"

Ao finalizar a implantação.

Clique no botão "View"

