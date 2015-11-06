require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_1'

class HomePage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_1
    sleep 3
    @@driver.find_element(:id => "module interest_and_debt").click
    sleep 2
    @@driver.find_element(:id => "mute_button").click
    return ITD_1.new(@@driver)
  end

end