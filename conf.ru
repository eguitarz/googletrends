require 'sinatra/base'

module App
	class Core < Sinatra::Base		
		set :root, File.dirname(__FILE__)
	  set :static, true
	  set :public_folder, ->{ root }

	  get '/' do
	  	File.read('index.html')
	  end
	end
end
run App::Core