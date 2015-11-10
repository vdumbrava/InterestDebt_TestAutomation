require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_14'

class ITD_13 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_14
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_14.new(@@driver)
  end

end