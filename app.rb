require 'sinatra/base'
require 'sinatra/reloader'

require './modules/fizzbuzz'
require './modules/chat'
require './modules/calender'

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

  # Calender
  get '/calender' do
    erb :calender
  end

  post '/calender' do
    year = params[:year].to_i
    month = params[:month].to_i
    calender = Calender.new(year, month)

    @year = year
    @month = month
    @week = calender.week()
    erb :calender
  end
end
