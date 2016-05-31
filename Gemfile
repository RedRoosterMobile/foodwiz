source 'https://rubygems.org'
ruby '2.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
#gem 'rails', '4.0.4'
gem 'tzinfo-data'

# asset generation on heroku
gem 'rails_12factor'


# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# pagination
gem 'will_paginate'
gem 'bootstrap-will_paginate'

# icons + wysiwyg editor
gem 'font-awesome-rails'
gem 'bootstrap-wysihtml5-rails'

# auth
gem 'sorcery'
gem 'bcrypt'


#gem 'minitest-rails'
group :test do
  gem 'minitest'
  gem 'cucumber-rails', require: false
  gem 'cucumber'
  gem 'poltergeist'
  gem 'capybara_minitest_spec'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'simplecov'
  gem 'coveralls', require: false
end

group :test,:development do
  gem 'byebug'
  gem 'factory_girl_rails'
end
# Use ActiveModel has_secure_password
#gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
