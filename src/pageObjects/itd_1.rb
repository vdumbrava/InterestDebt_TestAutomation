require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/itd_2'

class ITD_1 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_2
    sleep 5
    @@driver.find_element(:id => "activity-objective1").click
    return ITD_2.new(@@driver)
  end

  def navigateToItd_6
    sleep 5
    @@driver.find_element(:id => "activity-objective2").click
    return ITD_6.new(@@driver)
  end

  def navigateToItd_11
    sleep 5
    @@driver.find_element(:id => "activity-objective3").click
    return ITD_11.new(@@driver)
  end

  def navigateToItd_14
    sleep 5
    @@driver.find_element(:id => "activity-summary").click
    return ITD_14.new(@@driver)
  end

end