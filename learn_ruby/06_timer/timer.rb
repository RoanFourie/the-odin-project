class Timer
  def seconds=(time_input)
    @seconds = time_input
  end
  def seconds
    @seconds = 0
  end
  def time_string=(time_input)
    # @time_string = "00:00:00"
    @seconds = time_input
  end
  def time_string
    _h = @seconds / 3600
    if _h > 10
      _hours = _h.to_s
    elsif _h >= 1 && _h < 10
      _hours = ("0%s" % (_h.to_s))
    else
      _hours = "00"
    end
    _m = (@seconds % 3600) / 60
    if _m > 10
      _minutes = _m.to_s
    elsif _m >= 1 && _m < 10
      _minutes = ("0%s" % (_m.to_s))
    else
      _minutes = "00"
    end
    _s = @seconds % 60
    if _s > 10
      _seconds = _s.to_s
    elsif _s >= 1 && _s < 10
      _seconds = ("0%s" % (_s.to_s))
    else
      _seconds = "00"
    end
    @time_string = ("%s:%s:%s" % [_hours, _minutes, _seconds])
  end
end

# http://stackoverflow.com/questions/16617052/rails-rspec-before-all-vs-before-each
