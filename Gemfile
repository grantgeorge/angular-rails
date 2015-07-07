source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'rails-api'
gem 'pg'
# Use devise_token_auth for authentication.
gem 'devise_token_auth'
# Use rack-rewrite to allow use of HTML5 pushState.
gem 'rack-rewrite'

gem 'active_model_serializers'

group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'byebug'
  gem 'web-console'
  gem 'colorize'
  gem 'growl'
  gem 'rb-fsevent'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'capybara-webkit'
end

group :production, :staging do
  gem 'rails_12factor', '0.0.3'
  gem 'rails_stdout_logging', '0.0.3'
end
