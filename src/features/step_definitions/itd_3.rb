require_relative '../../../src/features/step_definitions/abstract_page'
require_relative '../../../src/features/step_definitions/itd_4'

class ITD_3 < AbstractPage

  include Test::Unit::Assertions

  def initialize (driver)
    super(driver)
  end

  def navigateToItd_4
    sleep 7
    @@driver.find_element(:id => "forward_button").click
    return ITD_4.new(@@driver)
  end

  def checkFonts

    @title2 = @@driver.find_element(:class => "js-header-v2")
    @title1 = @title2.find_element(:class => "header-body__title")
    @title = @title1.find_element(:class => "header")
    @titleText = @title.text
    @titleFontSize =  @title.css_value("font-size")
    @titleFontWeight =  @title.css_value("font-weight")
    @titleFontFamily =  @title.css_value("font-family")
    @titleFontColor = @title.css_value("color")

    @Test
    assert_equal(@titleText, "Monthly Payment Formula")
    assert_equal(@titleFontSize, "45px")
    assert_equal(@titleFontWeight, "400")
    assert_equal(@titleFontFamily, "\"opensans_regular\"")
    assert_equal(@titleFontColor, "rgba(0, 0, 0, 1)")

    @subtitle2 = @@driver.find_element(:class => "js-header-v2")
    @subtitle1 = @subtitle2.find_element(:class => "header-body__sub-header")
    @subtitle = @subtitle1.find_element(:class => "description")
    @subtitleText = @subtitle.text
    @subtitleFontSize =  @subtitle.css_value("font-size")
    @subtitleFontWeight =  @subtitle.css_value("font-weight")
    @subtitleFontFamily =  @subtitle.css_value("font-family")
    @subtitleFontColor = @subtitle.css_value("color")

    @Test
    assert_equal(@subtitleText, "(annual interest rate expressed as a decimal)(loan balance) / 12 = approximate interest accrued each month.")
    assert_equal(@subtitleFontSize, "20px")
    assert_equal(@subtitleFontWeight, "400")
    assert_equal(@subtitleFontFamily, "\"opensans_light\"")
    assert_equal(@subtitleFontColor, "rgba(106, 105, 105, 1)")

    return ITD_3.new(@@driver)
  end

end