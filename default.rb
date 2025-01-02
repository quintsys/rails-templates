gem_group :development do
  gem 'rails_best_practices'
  gem 'htmlbeautifier', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'solargraph'
  gem 'solargraph-rails'
end

gem 'authentication-zero', '~> 4.0'
gem 'meta-tags'

after_bundle do
  generate "authentication", "--pwned", "--passwordless", "--trackable",
    "--invitable", "--masqueradable", "--sudoable"

  run "bundle install --quiet"
  rails_command "db:migrate"

  run "bundle exec rubocop --autocorrect-all", abort_on_failure: false

  git :init
  git add: "."
  commit_message = ENV.fetch("COMMIT_MESSAGE", "Rails new")
  git commit: "-a -m '#{commit_message}'"
end
