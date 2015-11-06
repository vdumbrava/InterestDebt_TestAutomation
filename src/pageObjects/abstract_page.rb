require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'rspec/core/test_unit_assertions_adapter'

class AbstractPage

  include Test::Unit::Assertions
  @driver = nil

  def initialize (driver)
    @@driver = driver
  end

  def navigateToModuleMatrixPage
    @@driver.manage.window.maximize
    @@driver.navigate.to("http://tim-vm-021.3pillar.corp/AtWork/public/index.html")
    return HomePage.new(@@driver)
  end

  def getText(cssPath)
    wait = Selenium::WebDriver::Wait.new(:timeout => 20)
    wait.until {
      element = @@driver.find_element(:css => cssPath)
      element if element.displayed?
    }
    @@textElement = @@driver.find_element(:css => cssPath)
    return HomePage.new(@@driver)
  end

  def checkText (expected_text, expected_size, expected_family, expected_color)
    assert_equal(@@textElement.text, expected_text)
    assert_equal(@@textElement.css_value("font-size"), expected_size)
    assert_equal(@@textElement.css_value("font-family"), expected_family)
    assert_equal(@@textElement.css_value("color"), expected_color)
    return HomePage.new(@@driver)
  end

  def pressForward(delay)
    wait = Selenium::WebDriver::Wait.new(:timeout => delay)
    input = wait.until {
      element = @@driver.find_element(:id => "forward_button")
      element if element.displayed?
    }
    input.click
    return HomePage.new(@@driver)
  end

  def quit
    @@driver.quit
  end

  def muteVolume
    @@driver.find_element(:id => "volume_button").click
  end

end