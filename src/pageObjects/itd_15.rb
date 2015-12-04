require_relative '../../src/pageObjects/abstract_page'

class ITD_15 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateBackToModuleMatrixPage
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return HomePage.new(@@driver)
  end

  # def getText(cssPath)
  #   wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  #   wait.until {
  #     element = @@driver.find_element(:css => cssPath)
  #     element if element.displayed?
  #   }
  #   @@textElement = @@driver.find_element(:css => cssPath)
  #   puts @@textElement.text
  #   return HomePage.new(@@driver)
  # end

end