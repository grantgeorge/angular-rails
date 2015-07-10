source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails', '4.2.1'
gem 'rails-api', '0.4.0'
gem 'pg', '0.18.2'
gem 'devise_token_auth', '0.1.31'
gem 'rack-rewrite', '1.5.1'
gem 'active_model_serializers', '0.9.3'
gem 'colorize', '0.7.7'

group :test, :development do
  gem 'rspec-rails', '3.3.2'
  gem 'capybara', '2.4.4'
  gem 'faker', '1.4.3'
  gem 'byebug', '5.0.0'
  gem 'web-console', '2.1.3'
  gem 'guard-rspec', '4.6.0'
  gem 'spring-commands-rspec', '1.0.4'
  gem 'database_cleaner', '1.4.1'
  gem 'selenium-webdriver', '2.46.2'
  gem 'capybara-webkit', '1.6.0'
  gem 'factory_girl_rails', '4.5.0'
end

group :production, :staging do
  gem 'rails_12factor', '0.0.3'
end

group :mac, optional: true do
  gem 'growl', '1.0.3'
  gem 'rb-fsevent', '0.9.5'
end
