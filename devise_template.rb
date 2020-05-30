# Author: Scott Goyette
# Email: scott.goyette@rubypythmore.com
# Date: 05/30/2020
# description: Template for adding devise into an existing project.
gem 'devise'

run 'bundle install'
run 'spring stop'

if yes?("Do you want to generate a User Model (first_name, last_name, admin:boolean)?")
  generate(:model, 'user', 'first_name', 'last_name', 'admin:boolean')
end

# rails g devise:install
generate('devise:install')
generate(:devise, 'User')

environment 'config.action_mailer.default_url_options = { host: "localhost", port: 3000 }', env: 'development'
