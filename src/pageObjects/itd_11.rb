require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_12'

class ITD_11 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_12
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_12.new(@@driver)
  end

end