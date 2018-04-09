class Fortune
  RESULT_LIST = ['大吉', '中吉', '吉', '小吉', '末吉', '凶', '大凶']

  def initialize
    @results = RESULT_LIST.sort_by{rand}
  end

  def result
    n = rand(0...RESULT_LIST.length)
    return @results[n]
  end
end
