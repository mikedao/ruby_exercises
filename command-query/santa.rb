class Santa
  attr_accessor :cookies_eaten

  def initialize
    self.cookies_eaten = 0
  end

  def fits?
    cookies_eaten > 2 ? false : true
  end

  def eats_cookies
    self.cookies_eaten += 1
  end


end
