require 'sinatra'

# FizzBuzz
get '/fizzbuzz' do
  lists = 1..100
  results = []
  lists.each do |num|
    result = ''
    if num % 3 == 0
      result += 'Fizz'
    end
    if num % 5 == 0
      result += 'Buzz'
    end
    if result == ''
      result = num
    end
    results.push(result)
  end

  @title = 'Fizzbuzz'
  @results = results
  erb :'fizzbuzz'
end
