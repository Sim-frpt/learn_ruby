class Timer

  attr_accessor :seconds

  def initialize ( seconds=0 )
    @seconds = seconds
  end
  
  def time_string
    raw_seconds = @seconds
    time_hash = { hours: 0, minutes: 0, seconds: 0 } 
    remainder = 0
    
    if raw_seconds >= 3600
      remainder = raw_seconds % 3600
      time_hash[ :hours ] = ( raw_seconds - remainder ) / 3600
      raw_seconds = remainder
    end
 
    if raw_seconds >= 60
      remainder = raw_seconds % 60
      time_hash[ :minutes ] = ( raw_seconds - remainder ) / 60
      time_hash[ :seconds ] = remainder
    end

    if raw_seconds < 60
      time_hash[ :seconds ] = raw_seconds
    end
    
    return padding( time_hash )
  end

  private

  def padding( time_hash )
    return "%<hours>02d:%<minutes>02d:%<seconds>02d" % time_hash
  end
end


