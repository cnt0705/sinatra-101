module FizzBuzz
  def results
    lists = 1..100
    results = []

    lists.each do |num|
      txt = ''
      if num % 3 == 0
        txt += 'Fizz'
      end
      if num % 5 == 0
        txt += 'Buzz'
      end
      if txt == ''
        txt = num
      end
      results.push(txt)
    end

    return results
  end

  module_function :results
end
