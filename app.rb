require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/visit' do
  erb :visit
end

post '/visit' do
  @username = params[:username]
  @phone = params[:phone]
  @datetime = params[:datetime]
  @barber = params[:barber]
  @color = params[:color]
  erb "OK!#{@username}=====#{@phone}=====#{@datetime}=====#{@barber}=====#{@color}"
end
