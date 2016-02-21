source 'https://rubygems.org'
ruby '2.2.4'

# Standard Rails gems
gem 'rails', '4.2.4'
gem 'sass-rails', '5.0.3'
gem 'uglifier', '2.7.1'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.4'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.3.1'
gem 'bcrypt', '3.1.10'
gem "hstore_accessor", '0.9.0'
gem 'httparty'
# Necessary for Windows OS (won't install on *nix systems)
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Kaminari: https://github.com/amatsuda/kaminari
gem 'kaminari', '0.16.3'

# rails specific capistrano funcitons

# integrate bundler with capistrano

# if you are using RBENV

# Use the Unicorn app server
# Friendly_id: https://github.com/norman/friendly_id
gem 'friendly_id', '5.1.0'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass', '4.4.0'

# RailsBricks: http://www.railsbricks.net
#gem 'railsbricks'

# Bootstrap 3: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '3.3.5.1'
gem 'twitter-bootstrap-rails'
gem 'bootstrap-kaminari-views'
gem 'awesome_print'
#gem 'pipedrive-ruby', github: 'Fundbase/pipedrive-ruby'
#gem 'pipedrive.rb'
gem 'PipedrivePUT'
gem 'google_drive'
gem 'signet'#, github: 'krautcomputing/signet', branch: 'token_credential_uri_as_hash'
gem 'google-api-client'
gem 'roo'
gem 'roo-google'

group :development, :test do
  gem 'byebug', '6.0.2'
  gem 'web-console', '2.2.1'
  gem 'pry'
  gem 'bullet'
  gem 'rack-mini-profiler'
  gem 'metric_fu'
  gem 'rubocop'
  # Figaro: https://github.com/laserlemon/figaro
  gem 'figaro', '1.1.1'

  # Spring: https://github.com/rails/spring
  gem 'spring', '1.3.6'

  # Annotate_Models: https://github.com/ctran/annotate_models
  gem 'annotate', '2.6.10'
end

group :development do
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

gem 'puma'

# PostgreSQL
gem 'pg'

# Devise: https://github.com/plataformatec/devise
gem 'devise', '3.5.2'

# Redcarpet: https://github.com/vmg/redcarpet
gem 'redcarpet', '3.3.2'

# Rails 12factor for Heroku: https://github.com/heroku/rails_12factor
group :production do
  gem 'rails_12factor'
end

# Unicorn: http://unicorn.bogomips.org
group :production do
  gem 'unicorn'
end
