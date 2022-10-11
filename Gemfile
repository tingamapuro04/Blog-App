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

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

group :development do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'web-console'
  gem 'rspec-rails', '~> 6.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
end

gem 'rubocop', '>= 1.0', '< 2.0'

group :development, :test do
  gem 'rails-controller-testing'
  gem 'bullet', '~> 7.0', '>= 7.0.3'
end
