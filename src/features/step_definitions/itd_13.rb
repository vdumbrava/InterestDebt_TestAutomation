require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_14'

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