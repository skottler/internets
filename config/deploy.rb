set :application, "internets"
set :repository,  "https://github.com/skottler/internets"
set :scm, :git
set :deploy_to, "/var/apps/#{application}"
set :user, ENV["USER"]

role :web, ENV["webserver"]

after "deploy", "deploy:jekyll"

namespace :deploy do
  task :jekyll do
    run("cd #{deploy_to}/current && bundle install && jekyll")
  end
end
