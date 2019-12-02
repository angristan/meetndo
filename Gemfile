source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'faker' # Library for generating fake data such as names, addresses, and phone numbers
gem 'font_awesome5_rails', '~> 0.9.0' # Font-Awesome 5 support
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease
gem 'pg', '>= 0.18', '< 2.0' # Use postgresql as the database for Active Record
gem 'puma', '~> 4.1' # Use Puma as the app server
gem 'rails', '~> 6.0.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'webpacker', '~> 4.0' # Transpile app-like JavaScript

# gem 'bcrypt', '~> 3.1.7' # Use Active Model has_secure_password
# gem 'image_processing', '~> 1.2' # Use Active Storage variant
# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production

gem 'devise' # Flexible authentication solution for Rails with Warden.

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails', '~> 0.3.9' # Use Pry as your rails console
  gem 'rubocop-airbnb', '>= 3.0.1' # Include Rubocop configuration used at Airbnb and a few custom rules
end

group :development do
  gem 'better_errors', '~> 2.5', '>= 2.5.1' # Provides a better error page for Rails and other Rack apps
  gem 'did_you_mean', '~> 1.3', '>= 1.3.1' # The gem that has been saving people from typos since 2014
  gem 'listen', '>= 3.0.5', '< 3.2' # Listens to file modifications and notifies you about the changes. Works everywhere!
  gem 'spring' # Spring speeds up development by keeping your application running in the background
  gem 'spring-watcher-listen', '~> 2.0.0' # Makes spring watch files using the listen gem
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
end

group :test do
  gem 'capybara', '>= 2.15' # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver' # Tool for writing automated tests of websites
  gem 'webdrivers' # Easy installation and use of web drivers to run system tests with browsers
  gem 'rails-controller-testing', '1.0.4' # Brings back `assigns` and `assert_template` to your Rails tests
  gem 'minitest', '~> 5.13' # Provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking
  gem 'minitest-reporters', '~> 1.4', '>= 1.4.2' # Create customizable MiniTest output formats
end
