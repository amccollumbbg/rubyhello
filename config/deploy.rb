set :application, "hello"
set :repository,  "git://github.com/amccollumbbg/rubyhello"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "67.214.216.225"                          # Your HTTP server, Apache/etc
role :app, "67.214.216.225"                          # This may be the same as your `Web` server
role :db,  "67.214.216.225", :primary => true # This is where Rails migrations will run
role :db,  "67.214.216.225"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
set :user, "deploy"
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
 end
