require 'sinatra'
require 'make_todo'
require 'rubygems'

get '/' do
	@Tareas = Tarea.all
	erb :index
end

post '/' do
	Tarea.create(params[:title])
	print params[:title]
	redirect '/'
end

get '/:id' do
 Tarea.update(params[:id])
 print params[:id]
  redirect '/'
end


get '/delete/:id' do
  Tarea.destroy(params[:id])
  redirect '/'
end





