require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latinizer = PigLatinizer.new
    @original_phrase = params["user_phrase"]
    @new_phrase = pig_latinizer.piglatinize(@original_phrase)
    erb :user_input
  end

end
