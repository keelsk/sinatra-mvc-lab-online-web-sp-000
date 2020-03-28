require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do 
    @analyzed_text = PigLatinizer.new(params[:user_phrase])

    @results = text.change_text
    erb :results
  end
end