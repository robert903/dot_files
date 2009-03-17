# haml
plugin 'haml', :git => "git://github.com/nex3/haml.git"

# rspec
plugin 'rspec',       :git => "git://github.com/dchelimsky/rspec.git"
plugin 'rspec-rails', :git => "git://github.com/dchelimsky/rspec-rails.git"

generate("rspec")

# restful auth
plugin 'restful_authentication', :git => "git://github.com/technoweenie/restful-authentication.git"
inside('vendor/plugins') do
  run "mv restful-authentication restful_authentication"
end

# generate :authenticated, "user sessions --rspec"
# 
# route "map.signup '/signup', :controller => 'users',   :action => 'new'"
# route "map.login  '/login',  :controller => 'session', :action => 'new'"
# route "map.logout '/logout', :controller => 'session', :action => 'destroy'"
# 
# rake "db:migrate"
# 
# # hoptoad
# plugin 'hoptoad_notifier', :git => "git://github.com/thoughtbot/hoptoad_notifier.git"
# 
# initializer 'hoptoad.rb', <<-END
# HoptoadNotifier.configure do |config|
#   config.api_key = 'CHANGE_THIS_TO_YOUR_HOPTOAD_API_KEY'
# end
# END
# 
# # jquery
# run "curl -L http://jqueryjs.googlecode.com/files/jquery-1.2.6.min.js > public/javascripts/jquery.js"
# run "curl -L http://jqueryjs.googlecode.com/svn/trunk/plugins/form/jquery.form.js > public/javascripts/jquery.form.js"
# 
# # Set up session store initializer
# initializer 'session_store.rb', <<-END
# ActionController::Base.session = {
#   :key         => "_\#{File.basename(RAILS_ROOT)}_session",
#   :secret      => '#{(1..128).map { |x| (65 + rand(26)).chr }.join}'
# }
# ActionController::Base.session_store = :active_record_store
# END
# 
# rake "db:sessions:create"
# 
# # gitignore
# run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"
# run %{find . -type d -empty | grep -v "vendor" | grep -v ".git" | grep -v "tmp" | xargs -I xxx touch xxx/.gitignore}
# 
# file '.gitignore', <<-END
# .DS_Store
# log/*.log
# tmp/**/*
# config/database.yml
# db/*.sqlite3
# db/data.yml
# config/memcache.conf
# vendor/gems
# data.dump
# END
# 
# # remove cruft
# run "rm README"
# run "rm doc/README_FOR_APP"
# run "rm public/index.html"
# run "rm public/favicon.ico"
# run "rm -rf test"
# 
# git
# git :init
# git :add => "."
# git :commit => "-a -m 'Initial commit'"
