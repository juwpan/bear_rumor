dbm:
	bundle exec rails db:migrate

dbr:
	bundle exec rails db:rollback

dbm-test:
	bundle exec rails db:drop db:create db:migrate RAILS_ENV=test

# bundle install

b:
	bundle install

# Rspec

test:
	bundle exec rspec