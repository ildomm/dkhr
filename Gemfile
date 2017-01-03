source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'rails-api'
gem 'spring', :group => :development
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'tzinfo-data'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'bcrypt', '~> 3.1.11'
gem 'has_secure_token'
gem 'warden'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end