require 'selenium-webdriver'
require 'rspec'


require_relative '../../src/pageObjects/abstract_page'
require_relative '../../src/pageObjects/home_page'
require_relative '../../src/pageObjects/itd_1'
require_relative '../../src/pageObjects/itd_3'
require_relative '../../src/pageObjects/itd_4'


class TestSpec < AbstractPage
  include Test::Unit::Assertions
  # app = AbstractPage.new(Selenium::WebDriver.for :firefox)
  # app.navigateToModuleMatrixPage.navigateToItd_1.navigateToItd_2
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
        .checkText("This module will cover:", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-1.fadeIn.animated > p")
        .checkText("Brief review of student loans", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-2.fadeIn.animated > p")
        .checkText("What interest is and how it affects your student loan", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-3.fadeIn.animated > p")
        .checkText("How repayment works", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.fadeIn.animated.itd-intro-text.js-itd-intro-text > div:nth-child(3) > div > div > div > ul > li.bullet-4.fadeIn.animated > p")
        .checkText("Tips for staying on top of your student loan debt", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
  end

  it "should Go to ITD_3 and check Text" do

    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_2
        .navigateToItd_3
        .getText("#page-container > div > div.lists > ul > li > div > div > div.js-header-v1.header-body__elem.fadeIn.animated > div.item.js-header-title.header-body__title > div")
        .checkText("Accrual", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.lists > ul > li > div > div > div.js-header-v1.header-body__elem.fadeIn.animated > div.item.js-sub-header.header-body__sub-header > div")
        .checkText("The process by which interest is accumulated.", "20px", "\"opensans_regular\"","rgba(119,116,120,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--big > div:nth-child(1) > div")
        .checkText("Debt after 1 Year", "15px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--big > div:nth-child(2) > div")
        .checkText("$11,000", "35px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--small > div:nth-child(1) > div")
        .checkText("Interest", "15px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--small > div:nth-child(2) > div")
        .checkText("10%", "35px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--medium > div:nth-child(1) > div")
        .checkText("Principal", "15px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--medium > div:nth-child(2) > div")
        .checkText("$10,000", "35px", "\"opensans_semibold\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.lists > ul > li > div > div > div.js-header-v2.header-body__elem.fadeIn.animated > div.item.js-header-title.header-body__title > div")
        .checkText("Monthly Payment Formula", "45px", "\"opensans_regular\"","rgba(0,0,0,1)")
        .getText("#page-container > div > div.lists > ul > li > div > div > div.js-header-v2.header-body__elem.fadeIn.animated > div.item.js-sub-header.header-body__sub-header > div")
        .checkText("(annual interest rate expressed as a decimal)(loan balance) / 12 = approximate interest accrued each month.", "20x", "\"opensans_light\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.js-interest-calculator.interest-calculator > ul > li.js-interest-math.interest-calculator__math.fadeIn.animated > p")
        .checkText("(.1)(10,000)/12 1000/12 = $83", "20px", "\"opensans_light\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--small > div:nth-child(2) > div")
        .checkText("Monthly interest accrued = $83", "20px", "\"opensans_semibold\"","rgba(0,0,0,1)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--medium > div:nth-child(1) > div")
        .checkText("12th Month Period", "15px", "\"opensans_regular\"","rgba(100,108,111,0)")
        .getText("#page-container > div > div.bars-container__text > ul > li > div > div > div.bars-container__body.bars-container__body--medium > div:nth-child(2) > div")
        .checkText("Total Debt", "15px", "\"opensans_regular\"","rgba(100,108,111,0)")
  end

  it "should Go to ITD_4 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_2
        .navigateToItd_3
        .navigateToItd_4
        .getText("#page-container > div > div.title.text-center.fadeIn.animated > div > div")
        .checkText("How is my interest rate determined?", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div:nth-child(4) > ul > li > div > div > div > div.item.private-loans_title > div")
        .checkText("Private Loans", "35px", "\"opensans_regular\"","rgba(2,72,97, 1)")
        .getText("#page-container > div > div:nth-child(4) > ul > li > div > div > div > div.item.private-loans_text.opacity0.opacity1 > div")
        .checkText("Lenders set the interest rates and are abased on several factors including your credit history and that of your co-signer, if you have one, at the time of application.", "15px", "\"opensans_light\"","rgba(06,105,105, 1)")
        .getText("#page-container > div > div:nth-child(5) > ul > li > div > div > div > div.item.federal-loans_title > div")
        .checkText("Federal Loans", "35px", "\"opensans_regular\"","rgba(2,72,97, 1)")
        .getText("#page-container > div > div:nth-child(5) > ul > li > div > div > div > div.item.federal-loans_text.opacity0.opacity1 > div")
        .checkText("Congress sets loan interest rates based on financial markets and other factors", "15px", "\"opensans_light\"","rgba(06,105,105, 1)")
  end

  it "should Go to ITD_6 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_2
        .navigateToItd_3
        .navigateToItd_4
        .navigateToItd_5
        .navigateToItd_6
        .getText("#page-container > div > div.container-table.js-container-table > div > div > div > div.text-center.table-header > div > div")
        .checkText("Repayment", "35px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
        .getText("#page-container > div > div.container-table.js-container-table > div > div > div > div.items > div > div > div > div:nth-child(1) > ul > li.list-content > p")
        .checkText("Pay back a portion of your loan every month", "20px", "\"opensans_light\"","rgba(100, 108, 111, 1)")
        .getText("#page-container > div > div.container-table.js-container-table > div > div > div > div.items > div > div > div > div:nth-child(2) > ul > li.list-content > p")
        .checkText("You can pay more than what is due!", "20px", "\"opensans_light\"","rgba(100, 108, 111, 1)")
        .getText("#page-container > div > div.container-table.js-container-table > div > div > div > div.items > div > div > div > div:nth-child(3) > ul > li.list-content > p")
        .checkText("Check with your servicer about the rules for underpaying or overpaying", "20px", "\"opensans_light\"","rgba(100, 108, 111, 1)")
        .getText("#page-container > div > div.container-table.js-container-table > div > div > div > div.items > div > div > div > div:nth-child(4) > ul > li.list-content > p")
        .checkText("Postponing payments lets interest build up; it may end up costing you more", "20px", "\"opensans_light\"","rgba(100, 108, 111, 1)")
        .getText("#page-container > div > div.text-center.container-bubble.js-container-bubble > div > div > div > div.bubble-content > div > div")
        .checkText("When do I start repayment?", "30px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.text-left.disclamer > div > div > div > div > div > div")
        .checkText("Grace Period: A period of time after borrowers graduate, leave school, or drop below half-time enrollment when they may not be required to make payments on certain federal student loans. Some federal student loans will accrue interest during the grace period, and if the interest is unpaid, it will be added to the principal balance of the loan when the repayment period begins.", "15px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.text-center.container-calendar.calendar-january.js-calendar-january > div > div > div > div.calendar-header > div > div")
        .checkText("January", "25px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.text-center.container-calendar.calendar-february.js-calendar-february > div > div > div > div.calendar-header > div > div")
        .checkText("February", "25px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.text-center.container-calendar.calendar-march.js-calendar-march > div > div > div > div.calendar-header > div > div")
        .checkText("March", "25px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.text-center.container-calendar.calendar-april.js-calendar-april > div > div > div > div.calendar-header > div > div")
        .checkText("April", "25px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("#page-container > div > div.text-center.container-calendar-grace.js-container-calendar-grace > div > div > div > div.graph-fill.js-graph > div:nth-child(2) > div")
        .checkText("Interest building", "15px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
  end

end