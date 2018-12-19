class Bridge

  def initialize
    puts "created bridge"
    @opened = false
  end

  def open
    puts "brigde is open. can run"
    @opened = true
  end

  def is_opened?
    return @opened
  end

end
