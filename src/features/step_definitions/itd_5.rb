require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_6'

class ITD_5 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_6
    sleep 5
    @@driver.find_element(:id => "activity-objective2").click
    return ITD_6.new(@@driver)
  end



end