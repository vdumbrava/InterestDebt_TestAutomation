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

  # def checkFonts
  #   @title1 = @@driver.find_element(:class => "header-title")
  #   @title = @title1.find_element(:class => "header")
  #   @titleText = @title.text
  #   @titleFontSize =  @title.css_value("font-size")
  #   @titleFontFamily =  @title.css_value("font-family")
  #   @titleFontColor = @title.css_value("color")
  #
  #   # puts @title.text
  #   # puts @title.css_value("font-size")
  #   # puts @title.css_value("font-weight")
  #   # puts @title.css_value("font-family")
  #   # puts @title.css_value("color")
  #
  #   @Test
  #    assert_equal(@titleText, "Interest & Debt Management")
  #    assert_equal(@titleFontSize, "45px")
  #    assert_equal(@titleFontFamily, "\"opensans_regular\"")
  #    assert_equal(@titleFontColor, "rgba(0, 0, 0, 1)")
  #
  #
  #   @subtitle1 = @@driver.find_element(:class => "subtitle")
  #   @subtitle = @subtitle1.find_element(:class => "description")
  #   @subtitleText = @subtitle.text
  #   @subtitleFontSize =  @subtitle.css_value("font-size")
  #   @subtitleFontFamily =  @subtitle.css_value("font-family")
  #   @subtitleFontColor = @subtitle.css_value("color")
  #
  #   # puts @subtitle.text
  #   # puts @subtitle.css_value("font-size")
  #   # puts @subtitle.css_value("font-weight")
  #   # puts @subtitle.css_value("font-family")
  #   # puts @subtitle.css_value("color")
  #
  #   @Test
  #   assert_equal(@subtitleText, "This module will cover:")
  #   assert_equal(@subtitleFontSize, "20px")
  #   assert_equal(@subtitleFontFamily, "\"opensans_light\"")
  #   assert_equal(@subtitleFontColor, "rgba(0, 0, 0, 1)")
  #
  #   sleep 3
  #   @items = @@driver.find_element(:class => "items-container")
  #   @bullet = @items.find_element(:class => "bullet-1")
  #   @bullet1 = @bullet.find_element(:class => "description")
  #   @bullet1Text = @bullet1.text
  #   @bullet1FontSize =  @bullet1.css_value("font-size")
  #   @bullet1FontFamily =  @bullet1.css_value("font-family")
  #   @bullet1FontColor = @bullet1.css_value("color")
  #
  #   assert_equal(@bullet1Text, "Brief review of student loans")
  #   assert_equal(@bullet1FontSize, "20px")
  #   assert_equal(@bullet1FontFamily, "\"opensans_light\"")
  #   assert_equal(@bullet1FontColor, "rgba(0, 0, 0, 1)")
  #
  #   sleep 2
  #   @bullet = @items.find_element(:class => "bullet-2")
  #   @bullet2 = @bullet.find_element(:class => "description")
  #   @bullet2Text = @bullet2.text
  #   @bullet2FontSize =  @bullet2.css_value("font-size")
  #   @bullet2FontFamily =  @bullet2.css_value("font-family")
  #   @bullet2FontColor = @bullet2.css_value("color")
  #
  #   assert_equal(@bullet2Text, "What interest is and how it affects your student loan")
  #   assert_equal(@bullet2FontSize, "20px")
  #   assert_equal(@bullet2FontFamily, "\"opensans_light\"")
  #   assert_equal(@bullet2FontColor, "rgba(0, 0, 0, 1)")
  #
  #   sleep 2
  #   @bullet = @items.find_element(:class => "bullet-3")
  #   @bullet3 = @bullet.find_element(:class => "description")
  #   @bullet3Text = @bullet3.text
  #   @bullet3FontSize =  @bullet3.css_value("font-size")
  #   @bullet3FontFamily =  @bullet3.css_value("font-family")
  #   @bullet3FontColor = @bullet3.css_value("color")
  #
  #   assert_equal(@bullet3Text, "How repayment works")
  #   assert_equal(@bullet3FontSize, "20px")
  #   assert_equal(@bullet3FontFamily, "\"opensans_light\"")
  #   assert_equal(@bullet3FontColor, "rgba(0, 0, 0, 1)")
  #
  #   sleep 2
  #   @bullet = @items.find_element(:class => "bullet-4")
  #   @bullet4 = @bullet.find_element(:class => "description")
  #   @bullet4Text = @bullet4.text
  #   @bullet4FontSize =  @bullet4.css_value("font-size")
  #   @bullet4FontFamily =  @bullet4.css_value("font-family")
  #   @bullet4FontColor = @bullet4.css_value("color")
  #
  #   assert_equal(@bullet4Text, "Tips for staying on top of your student loan debt")
  #   assert_equal(@bullet4FontSize, "20px")
  #   assert_equal(@bullet4FontFamily, "\"opensans_light\"")
  #   assert_equal(@bullet4FontColor, "rgba(0, 0, 0, 1)")
  #
  #   return ITD_1.new(@@driver)
  # end

  # def getText(cssPath)
  #   wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  #   wait.until {
  #     element = @@driver.find_element(:css => cssPath)
  #     element if element.displayed?
  #   }
  #   @@textElement = @@driver.find_element(:css => cssPath)
  #   return ITD_1.new(@@driver)
  # end
  #
  # def checkText (expected_text, expected_size, expected_family, expected_color)
  #   assert_equal(@@textElement.text, expected_text)
  #   assert_equal(@@textElement.css_value("font-size"), expected_size)
  #   assert_equal(@@textElement.css_value("font-family"), expected_family)
  #   assert_equal(@@textElement.css_value("color"), expected_color)
  #
  #   return ITD_1.new(@@driver)
  # end

end