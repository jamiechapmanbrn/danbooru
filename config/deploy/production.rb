set :user, "james"
set :rails_env, "production"
server "magi", :roles => %w(web app db), :primary => true, :user => "james"
