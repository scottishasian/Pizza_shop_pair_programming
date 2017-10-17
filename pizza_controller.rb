require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/pizza')


get '/pizzas' do #Requesting pizzas has no side effects so safe get method.
  @pizzas = Pizza.all()
  erb(:index)
end

get '/pizzas/new' do # Sinatra is sequential, so this needs to be before ID as the :id accepts
  erb(:new)          # all inputs. Set up is like an if/else statement where :id catches all.
end

post '/pizzas' do
  @pizza = Pizza.new(params)
  @pizza.save()
  erb(:create)
end

post '/pizzas/:id/edit' do
  @pizza = Pizza.find(params[:id].to_i)
  erb(:edit)
end

post '/pizzas/:id/update' do
  @pizza = Pizza.new(params)
  @pizza.update
  redirect '/pizzas'     # Does ID change with update?
end

post '/pizzas/:id/delete' do
  @pizza = Pizza.find(params[:id].to_i)
  @pizza.delete()
  redirect '/pizzas'
end

get '/pizzas/:id' do
  @pizza = Pizza.find(params[:id].to_i)
  erb(:show)
end
