set :application, "internets"
set :repository,  "https://github.com/skottler/internets"
set :scm, :git
set :deploy_to, "/var/apps/#{application}"
set :user, ENV["USER"]

role :web, ENV["webserver"]
