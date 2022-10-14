source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.4'

gem 'sprockets-rails'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'importmap-rails'

gem 'turbo-rails'

gem 'stimulus-rails'

gem 'jbuilder'

# gem 'redis', '~> 4.0'

# gem 'kredis'

# gem 'bcrypt', '~> 3.1.7'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

gem 'sassc-rails'

gem 'devise', '~> 4.8', '>= 4.8.1'

gem 'cancancan', '~> 3.4'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

group :development do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 6.0'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'rubocop', '>= 1.0', '< 2.0'

group :development, :test do
  gem 'bullet', '~> 7.0', '>= 7.0.3'
  gem 'rails-controller-testing'
end

gem 'will_paginate', '~> 3.3'

gem "active_model_serializers", "~> 0.10.13"
