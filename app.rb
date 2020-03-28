require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do 
    @analyzed_text = PigLatinizer.new(params[:user_phrase])
    @analyzed_text.change_text
    binding.pry
    erb :results
  end
end