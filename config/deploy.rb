default_run_options[:pty] = true
set :repository,  "git@github.com:tylerlane/wifiadmin.git"
set :scm, "git" 
set :scm_verbose, true 
set :branch, "master" 
set :deploy_via, :remote_cache

set :application, "wifiadmin" 
set :default_env,  'development'
set :rails_env,    'development'

set :deploy_to, "/opt/rails/#{application}" 
set :user, "root" 
set :admin_runner, "root" 
set :use_sudo, true

role :app, "wireless.positech.net" 
role :web, "wireless.positech.net" 
role :db,  "wireless.positech.net", :primary => true

namespace :deploy do
  desc "Restart Application" 
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt" 
  end
  desc "Start Application -- not needed for Passenger" 
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end

