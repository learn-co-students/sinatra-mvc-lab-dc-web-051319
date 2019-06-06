# frozen_string_literal: true

require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    sentence = params[:english]
    redirect "/#{sentence}"
  end

  get '/:words' do
    @sentence = params[:words]
    @pig = Piglatinizer.latinize(@sentence)
    erb :user_output
  end
end
