require 'sinatra/base'
require 'sinatra/flash'
require './App/Model/User.rb'
require './App/Model/Space.rb'
require './App/Model/Database_Connection.rb'
require 'date'

class ScareSpace < Sinatra::Base
  enable :sessions, :method_override
  register Sinatra::Flash

  DatabaseConnection.setup

  get '/' do
    redirect('/homepage')
  end

  get '/homepage' do
    @user = User.find(id: session[:user_id])
    @spaces_list = Space.all
    erb :homepage
  end

  get '/signup' do
    erb :signup
  end

  get '/spaces' do
    @user = User.find(id: session[:user_id])

    erb :spaces
  end

  post '/spaces' do 
    @user = User.find(id: session[:user_id])
    space = Space.create(name: params[:name_of_space], address: params[:address_of_space], price: params[:price_of_space], description: params[:description_of_space], lister_id: @user.id)
    if space
      flash[:notice] = 'You have created a space'
      redirect '/spaces'
    end

  end 

  get '/login' do
    erb :login
  end

  get '/requests' do
    @user = User.find(id: session[:user_id])
    erb :requests
  end

  post '/signup' do
    user = User.create(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect '/homepage'
    else
      flash[:notice] = 'Email already in use, please use another email'
      redirect '/signup'
    end
  end

  post '/login' do
    user = User.authenticate(email: params[:email], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect '/homepage'
    else
      flash[:notice] = 'Incorrect email or password'
      redirect('/login')
    end
  end

  post '/logout' do
    session.clear
    flash[:notice] = 'You have logged out'
    redirect('/homepage')
  end

  run! if app_file == $0
end
