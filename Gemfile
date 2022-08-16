source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

gem "sprockets-rails"

gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"

gem "cssbundling-rails"

gem "redis", "~> 4.0"

# gem "kredis"

gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem 'devise', "~> 4.8.1"
# gem "sassc-rails"

# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "puma", "~> 5.0"

  gem "rspec-rails", "~> 5.1.2"
  gem 'factory_bot_rails', "~> 6.2.0"
  gem "shoulda-matchers", "~> 5.1.0"
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :production do
  gem "pg", "~> 1.1"
end
