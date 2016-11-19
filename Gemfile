source 'https://rubygems.org'

ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.15'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Asset pipeline
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

# View rendering
gem 'slim-rails'

# Form builders & helpers
gem 'simple_form'

# Front-end
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.43'
gem 'bootstrap-sass', '~> 3.3.6'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'devise'
gem "rolify"

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'
gem 'adminlte2-rails'

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', '~> 0.41.2', require: false
  gem 'scss_lint', require: false
  gem 'slim_lint', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'webmock'
  gem 'rails-controller-testing'
end

group :production, :staging do
  gem 'rails_12factor'
end
