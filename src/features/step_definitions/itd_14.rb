require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_15'

class ITD_14 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_15

    sleep 3
    @@driver.find_element(:css => '#question > label:nth-child(6) > label').click

    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_15.new(@@driver)
  end

end