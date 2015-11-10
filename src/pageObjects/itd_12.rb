require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_13'

class ITD_12 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_13
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_13.new(@@driver)
  end

end