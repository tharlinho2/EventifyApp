source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

gem "rails", "~> 6.1.5"

gem "pg", "~> 1.1"

gem "puma", "~> 5.0"

gem "sass-rails", ">= 6"

gem "webpacker", "~> 5.0"

gem "jbuilder", "~> 2.7"

gem "redis", "~> 4.0"

# gem 'bcrypt', '~> 3.1.7'

gem "date_validator"

gem "rails-i18n"

gem "devise", "~> 4.8"

gem "devise-i18n", "~> 1.10"

gem "sidekiq-scheduler"

gem "sidekiq"

gem "mailgun-ruby", "~>1.2.5"

gem "haml-rails", "~> 2.0"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"

  gem "spring"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end
