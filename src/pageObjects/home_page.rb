require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_1'

class HomePage < AbstractPage

  def initialize (driver)
    super(driver)
  end

   def navigateToItd_1
    wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    wait.until {
      element = @@driver.find_element(:id => "module interest_and_debt")
      element if element.displayed?
    }
    @@driver.find_element(:id => "module interest_and_debt").click
    sleep 4
    @@driver.find_element(:id => "mute_button").click
    return ITD_1.new(@@driver)
  end

end