require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_5'

class ITD_4 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_5
    sleep 5
    @@driver.find_element(:id => "forward_button").click
    return ITD_5.new(@@driver)
  end

  def checkFonts

    @title2 = @@driver.find_element(:class => "title")
    @title1 = @title2.find_element(:class => "item")
    @title = @title1.find_element(:class => "header")
    puts @title.text
    puts @title.css_value("font-size")
    puts @title.css_value("font-weight")
    puts @title.css_value("font-family")
    @rgbColor = @title.css_value("color")



    # @subtitle2 = @@driver.find_element(:class => "js-header-v2")
    # @subtitle1 = @subtitle2.find_element(:class => "header-body__sub-header")
    # @subtitle = @subtitle1.find_element(:class => "description")
    # puts @subtitle.text
    # puts @subtitle.css_value("font-size")
    # puts @subtitle.css_value("font-weight")
    # puts @subtitle.css_value("font-family")

    return ITD_4.new(@@driver)
  end

end