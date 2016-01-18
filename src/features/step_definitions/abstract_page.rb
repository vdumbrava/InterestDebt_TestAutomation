require 'selenium-webdriver'
require 'rubygems'
require 'rubygems'
require 'rspec/core/test_unit_assertions_adapter'

class AbstractPage

  include Test::Unit::Assertions
  @driver = nil

  def initialize (driver)
    @@driver = driver
  end

  def navigateToModuleMatrixPage
    @@driver.manage.window.maximize
    #@@driver.navigate.to("http://tim-vm-020:3000")
    sleep 3
    @page.screenShot('tstModuleMatrix.png')

    @@driver.navigate.to("http://tim-vm-021.3pillar.corp/AtWork/public/index.html")
    #@@driver.navigate.to("http://atwork.deverfi.net/newthadiusatwork/login")
    #@@driver.find_element(:id => "email").send_keys "simona.bitu@3pillarglobal.com"
    #@@driver.find_element(:id => "email").send_keys "vasilica.dumbrava@3pillarglobal.com"
    #@@driver.find_element(:id => "password").send_keys "navient"
    #@@driver.find_element(:name => "commit").click

    # @@driver.navigate.to("http://tim-vm-021.3pillar.corp/AtWork/public/index.html")
    # @@driver.navigate.to("http://tim-vm-021.3pillar.corp/AtWork/public/index.html#interest-and-debt/intro")
    return HomePage.new(@@driver)
  end

  def getText(cssPath)
    wait = Selenium::WebDriver::Wait.new(:timeout => 60)
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

  def navigateToItd_9
    sleep 7
    @@driver.navigate.to("http://tim-vm-021.3pillar.corp/AtWork/public/index.html#interest-and-debt/objective2/page-9")
    return ITD_9.new(@@driver)
  end

  def selectKnowledgeCheckAnswer (answer)
    @@driver.find_element(:css => answer).click
  end

  def checkFeedback (feedback_link, expected_text)
    @@feedback = @@driver.find_element(:css => feedback_link)
    puts @@feedback.text
    assert_equal(@@feedback.text, expected_text)
    return HomePage.new(@@driver)
  end

  def navigateToKCWithBreadcrumbs (kc)
    case kc
      when "KC1"
        @@driver.find_element(:id => "activity-objective2").click
        sleep 2

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        wait.until {
          element = @@driver.find_element(:id => "back_button")
          element if element.displayed?
        }
        @@driver.find_element(:id => "back_button").click
        sleep 4
      when "KC2"
        @@driver.find_element(:id => "activity-objective3").click
        sleep 2

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        wait.until {
          element = @@driver.find_element(:id => "back_button")
          element if element.displayed?
        }
        @@driver.find_element(:id => "back_button").click
        sleep 4
      when "KC3"
        @@driver.find_element(:id => "activity-summary").click
        sleep 2

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        wait.until {
          element = @@driver.find_element(:id => "back_button")
          element if element.displayed?
        }
        @@driver.find_element(:id => "back_button").click
        sleep 4
      when "Summary"
        @@driver.find_element(:id => "activity-summary").click
        sleep 2

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        wait.until {
          element = @@driver.find_element(:id => "back_button")
          element if element.displayed?
        }
        @@driver.find_element(:id => "forward_button").click
        sleep 4
    end

  end

  def screenShot(screenShotName)
      @@driver.save_screenshot("/var/lib/jenkins/jobs/InterestDebt_TestAutomation/workspace/src/screenshots/"+screenShotName)
      #@@driver.save_screenshot("./screenshots/"+screenShotName)
  end


end