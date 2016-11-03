if Rails.env.development?

  require 'rubocop/rake_task'
  require 'slim_lint/rake_task'
  require 'scss_lint/rake_task'

  RuboCop::RakeTask.new
  SlimLint::RakeTask.new
  SCSSLint::RakeTask.new

  namespace :linter do

    task all: [:rubocop, :coffee_lint, :slim_lint, :scss_lint]

    desc 'Run CoffeeLint'
    task coffee_lint: :environment do
      sh 'coffeelint .'
    end

  end

end
