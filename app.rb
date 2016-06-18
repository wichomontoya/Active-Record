require 'sinatra'
require 'sinatra/activerecord'
# require './models/heroe.rb'

get '/' do
  redirect '/heroes'
end


get '/heroes' do
  
end

