dbm:
	bundle exec rails db:migrate

dbr:
	bundle exec rails db:rollback

dbm-test:
	bundle exec rails db:drop db:create db:migrate RAILS_ENV=test

# bundle install

# heroku BD
h-dbm:
	heroku run rake db:migrate

b:
	bundle install

# Rspec

test:
	bundle exec rspec

# Yarn watch

yarn-css:
	yarn build:css --watch

yarn:
	yarn build --watch
