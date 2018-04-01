class Calender
  DAYS_LIST = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def initialize(year, month)
    @year = year
    @month = month
  end

  def getDays()
    return DAYS_LIST[@month - 1]
  end

  def getStartWday()
    return Date.new(@year, @month, 1).wday
  end

  def week()
    days = getDays
    wday = getStartWday
    week = []

    days.times do |day|
      week.push({
        'day' => day + 1,
        'wday' => wday
      })

      if wday < 6
        wday += 1
      elsif
        wday = 0
      end
    end

    return week
  end
end
