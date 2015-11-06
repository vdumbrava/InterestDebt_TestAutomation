require 'selenium-webdriver'
require 'rspec'


require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/home_page'
require_relative '../../src/pageObjects/itd_1'
require_relative '../../src/pageObjects/itd_3'
require_relative '../../src/pageObjects/itd_4'


class TestSpec < AbstractPage
  include Test::Unit::Assertions
  #app = AbstractPage.new(Selenium::WebDriver.for :firefox)
  #app.navigateToModuleMatrixPage.navigateToItd_1.navigateToItd_2.navigateToItd_3.navigateToItd_4.checkFonts
  end

describe 'Testing fonts in ITD_1' do

  page = nil

  before(:each) do
    page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  end

  after(:each) do
    page.quit
  end

  it "should Go to ITD_1 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div.item.fadeIn.animated.header-title > div")
        .checkText("Interest & Debt Management", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div.item.subtitle.fadeIn.animated > div")
        .checkText("This module will cover:", "20px", "\"opensans_light\"","rgba(66, 66, 66, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-1.fadeIn.animated > p")
        .checkText("Brief review of student loans", "20px", "\"opensans_light\"","rgba(66, 66, 66, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-2.fadeIn.animated > p")
        .checkText("What interest is and how it affects your student loan", "20px", "\"opensans_light\"","rgba(66, 66, 66, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-3.fadeIn.animated > p")
        .checkText("How repayment works", "20px", "\"opensans_light\"","rgba(66, 66, 66, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-4.fadeIn.animated > p")
        .checkText("Tips for staying on top of your student loan debt", "20px", "\"opensans_light\"","rgba(66, 66, 66, 1)")
  end

end