require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_3'

class ITD_2 < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_3
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_3.new(@@driver)
  end

end