require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end

    post "/" do
        sentence = params[:english]
        binding.pry
        pig = Piglatinizer.latinize(sentence)
        redirect "/#{pig}"
    end

    get "/:words" do
        @modified_sentence = params[:words]
        erb :user_output
    end

end