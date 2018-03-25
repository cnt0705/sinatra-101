require 'sinatra/base'

require './modules/fizzbuzz'

class App < Sinatra::Base
  # FizzBuzz
  get '/fizzbuzz' do
    @results = FizzBuzz.results
    @title = 'Fizzbuzz'
    erb :'fizzbuzz'
  end
end
