require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do 
    text = PigLatinizer.new(params[:text])
    binding.pry
    @results = text.change_text
    erb :results
  end
end