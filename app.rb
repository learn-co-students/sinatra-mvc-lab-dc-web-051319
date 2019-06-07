require_relative 'config/environment'

set :views, "views" 

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do
  user_phrase = params[:user_phrase]
  piglatinizer = PigLatinizer.new 
  @result = piglatinizer.piglatinize(user_phrase)
    erb :show
  end 
end