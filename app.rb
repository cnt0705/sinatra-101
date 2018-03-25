require 'sinatra/base'
require 'sinatra/reloader'

require './modules/fizzbuzz'
require './modules/chat'

require 'date'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # FizzBuzz
  get '/fizzbuzz' do
    @results = FizzBuzz.results
    @title = 'Fizzbuzz'
    erb :fizzbuzz
  end

  # Chat
  get '/chat' do
    @messages = Chat.messages
    @title = 'Chat'
    erb :chat
  end

  post '/chat' do
    name = params[:name]
    message = params[:message]
    Chat.write(name, message)
    redirect 'chat'
  end
end
