require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
	 
	require 'cucumber/rails'

	ActionController::Base.allow_rescue = false

	# Remove/comment out the lines below if your app doesn't have a database.
	# For some databases (like MongoDB and CouchDB) you may need to use :truncation instead.
	begin
	  DatabaseCleaner.strategy = :transaction
	rescue NameError
	  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
	end

	# See https://github.com/cucumber/cucumber-rails/blob/master/features/choose_javascript_database_strategy.feature
	Cucumber::Rails::Database.javascript_strategy = :truncation
	
end

Spork.each_run do

end


