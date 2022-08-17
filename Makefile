dbm:
	bundle exec rails db:migrate

dbr:
	bundle exec rails db:rollback

dbmt:
	bundle exec rails db:migrate RAILS_ENV=test