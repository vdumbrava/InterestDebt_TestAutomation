require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_10'

class ITD_9 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_10
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_10.new(@@driver)
  end

end