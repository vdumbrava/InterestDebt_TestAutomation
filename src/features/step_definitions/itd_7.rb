require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_8'

class ITD_7 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_8
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_8.new(@@driver)
  end

end