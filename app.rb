require 'sinatra'

get	'/' do
	erb :index
end

post '/' do
	@login = params[:login]
	@password = params[:pass]
	if @login == 'admin' && @password == '1234'
		erb :welcome
	else
		@if_stop = 'user'
		erb :index
	end
end

get '/about' do
	"admin@admin.com"
end
