require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_7'

class ITD_6 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_7
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_7.new(@@driver)
  end

end