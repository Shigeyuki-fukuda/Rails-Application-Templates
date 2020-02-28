gem_group :development, :test do
  gem 'rspec-rails'
end

after_bundle do
  git :init
  git add: "."
  git commit: "-m 'Initial commit'"
  generate("rspec:install")
  git add: "."
  git commit: "-m 'Setup RSpec'"
end
