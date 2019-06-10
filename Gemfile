source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.3"

gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.3.1"
gem "bootstrap-will_paginate"
gem "carrierwave"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "devise"
gem "faker", "~> 1.6", ">= 1.6.3"
gem "figaro"
gem "font-awesome-sass", "~> 5.8.1"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "omniauth"
gem "omniauth-facebook"
gem "omniauth-google-oauth2"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "rails-i18n"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "solargraph", group: :development
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate", "~> 3.1.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry", "~> 0.12.2"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "sqlite3"
  gem "web-console", ">= 3.3.0"
end

group :production do
  gem "fog", "1.42"
  gem "pg"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
