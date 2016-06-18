require 'sinatra'
require 'sinatra/activerecord'
require './models/heroe.rb'

get '/' do
  redirect '/heroes'
end

# Indice de Heroes
get '/heroes' do
  @heroes=Heroe.all
  erb :index
end
# Creara Nuevo heroe
get '/heroes/new' do
	erb :new
end

post '/heroes' do
	Heroe.create({nombre: params[:nombre],nivel_de_poder: [params[:nivel_de_poder]]})
	redirect to ('/heroes')
end