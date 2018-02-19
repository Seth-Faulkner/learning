require 'sinatra'

get '/' do 
	'<a href="page2">Click me</a>'
end

get '/page2' do
	'<a href=".">Go back</a>'
end

	
