require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_9'

class ITD_8 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_9
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_9.new(@@driver)
  end

end