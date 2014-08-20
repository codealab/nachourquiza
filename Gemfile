source "https://rubygems.org"

gem "rails", "4.1.1"

gem "pg"
gem "pg_search"

gem "turbolinks"
gem "coffee-rails", "~> 4.0.0"
gem "sass-rails", "~> 4.0.3"
gem "bootstrap-sass", "~> 3.0.0.0"
gem "uglifier", ">= 1.3.0"

gem "simple_form"

gem "i18n"

gem "rails-i18n"
gem "cancancan", "~> 1.8"

gem "jquery-rails"
gem "jquery-migrate-rails", "~> 1.2.1"
gem "jquery-ui-rails", "~> 5.0.0"

gem "jcrop-rails-v2"
gem "carrierwave"

gem "jbuilder", "~> 2.0"
gem "sprockets", "2.11.0"

gem "kaminari"
gem "sdoc", "~> 0.4.0", group: :doc

if RbConfig::CONFIG["target_os"] =~ /mswin|mingw|cygwin/i
  gem "mini_magick"
else
  gem "rmagick", :require => "RMagick"
end

gem "tzinfo-data", platforms: [:mingw, :mswin]

gem 'bcrypt-ruby', '3.1.2'

group :production do
	gem "fog"
	gem "unf"
	gem "unicorn"
	gem "rails_12factor"
end

group :development, :test do
  gem "rspec-rails"
  gem "capybara", "~> 2.2.1"
  gem "factory_girl_rails", "4.2.1"
  gem "guard-rspec"
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
end