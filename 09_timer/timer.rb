class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    if(@seconds == 0)
      return "00:00:00"
    elsif(@seconds < 60)
      return "00:00:" + get_digits(@seconds).to_s
    elsif(@seconds < 3600)
      return "00:" + get_digits(@seconds/60).to_s + ":" + get_digits(@seconds%60).to_s
    else
      return get_digits((@seconds/60)/60).to_s + ":" + get_digits((@seconds % 3600)/60).to_s + ":" + get_digits(@seconds%60).to_s
    end
  end

  def get_digits num
    if (num < 10)
      return "0" + num.to_s
    else return num.to_s
    end
  end

end