#!/usr/bin/ruby

class Entity < Object
  DaySpec = "%Y/%m/%d"
  DayRegex = %r|((20)?[0-9]{2}/[01][0-9]/[0-3][0-9])|

  def initialize(day=nil)
    @today = false
    if day.class == String then
  	  if DayRegex === day then
  	    @dayspec = $1
  	  else
  	    @dayspec = nil
  	  end
  	elsif day.class == Time then
  	  @dayspec = day.strftime(DaySpec)
  	elsif day.class == NilClass then
  	  @dayspec = Time.now.strftime(DaySpec)
      @today = true
  	else
      @dayspec = nil
  	end
  end

  def subPath
    return "/"+@dayspec if @dayspec
    return nil
  end

  def render(readonly=!@today)
    ""
  end
end
