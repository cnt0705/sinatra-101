require 'sinatra/base'
require 'sinatra/reloader'

require './modules/fizzbuzz'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # FizzBuzz
  get '/fizzbuzz' do
    @results = FizzBuzz.results
    @title = 'Fizzbuzz'
    erb :'fizzbuzz'
  end
end
