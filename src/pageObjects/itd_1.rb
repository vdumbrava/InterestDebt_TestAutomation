require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_2'

class ITD_1 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_2
    sleep 7
    @@driver.find_element(:id => "activity-objective1").click
    return ITD_2.new(@@driver)
  end

  def navigateToItd_5
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {
      element = @@driver.find_element(:id => "back_button")
      element if element.displayed?
    }

    @@driver.find_element(:id => "activity-objective2").click
    sleep 4

    # wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    # wait.until {
    #   element = @@driver.find_element(:id => "back_button")
    #   element if element.displayed?
    # }
    @@driver.find_element(:id => "back_button").click
    sleep 4
  end

  def navigateToItd_6
    sleep 7
    @@driver.find_element(:id => "activity-objective2").click
    return ITD_6.new(@@driver)
  end

  def navigateToItd_10
    @@driver.find_element(:id => "activity-objective3").click
    sleep 2

    wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    wait.until {
      element = @@driver.find_element(:id => "back_button")
      element if element.displayed?
    }
    @@driver.find_element(:id => "back_button").click
    sleep 4
  end

  def navigateToItd_11
    sleep 7
    @@driver.find_element(:id => "activity-objective3").click
    return ITD_11.new(@@driver)
  end

  def navigateToItd_13
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {
      element = @@driver.find_element(:id => "back_button")
      element if element.displayed?
    }

    @@driver.find_element(:id => "activity-summary").click
    sleep 2

    wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    wait.until {
      element = @@driver.find_element(:id => "back_button")
      element if element.displayed?
    }
    @@driver.find_element(:id => "back_button").click
    sleep 4
  end

  def navigateToItd_14
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {
      element = @@driver.find_element(:id => "activity-summary")
      element if element.displayed?
    }
    @@driver.find_element(:id => "activity-summary").click
    return ITD_14.new(@@driver)
  end

end