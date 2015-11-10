require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_11'

class ITD_10 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_11
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_11.new(@@driver)
  end

end