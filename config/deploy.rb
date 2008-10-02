default_run_options[:pty] = true
set :repository,  "git://github.com/tylerlane/wifiadmin.git" 
set :scm, "git" 
set :branch, "master" 
set :deploy_via, :remote_cache

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

#role :app, "your app-server here"
#role :web, "your web-server here"
#role :db,  "your db-server here", :primary => true

set :application, "wifiadmin" 
set :deploy_to, "/opt/rails/#{application}" 
set :user, "root" 
set :admin_runner, "root" 
set :use_sudo, false
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

