docker-compose build

docker-compose run --rm app bundle install

docker-compose run --rm app bundle exec rake db:create

docker-compose run --rm app bundle exec rake db:migrate

docker-compose run --rm app bundle exec rails csv:import

docker-compose up

## END - POINTS
https://documenter.getpostman.com/view/5071308/SzYW4gQY?version=latest#08e3c609-22e1-43f3-9275-06ca9256d049

Eu subi um servidor se não quiser builda o projeto
No end-point do postman na variavel server_url é so colocar ou mudar no environment 
https://inep.herokuapp.com/

Se quiser subir um server novo é so clikar no botão abaixo

## Implantando na Heroku

Clique abaixo para implantar o aplicativo na sua conta na [Heroku](https://www.heroku.com/)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/sergiohc/inep)

Em seguida clique no botão "Deploy"

Ao finalizar a implantação.

Clique no botão "View"

