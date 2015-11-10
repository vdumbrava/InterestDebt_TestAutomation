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

describe 'Testing fonts in Objective 1' do

  page = nil

  before(:all) do
    page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  end

  after(:all) do
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

  it "should Go to ITD_2 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_2
        .getText("")
        .checkText("Lender", "30px", "\"opensans_regular\"","rgba(110, 108, 111, 1)")
        .getText("")
        .checkText("Loan", "30px", "\"opensans_regular\"","rgba(110, 108, 111, 1)")
        .getText("")
        .checkText("Principal", "15px", "\"opensans_semibold\"","rgba(110, 108, 111, 1)")
        .getText("")
        .checkText("Interest", "15px", "\"opensans_semibold\"","rgba(110, 108, 111, 1)")
        .getText("")
        .checkText("Fees", "15px", "\"opensans_semibold\"","rgba(110, 108, 111, 1)")
        .getText("")
        .checkText("Fixed Interest", "35px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("An interest rate that remains the same over the course of the entire loan.", "20px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Variable Interest", "35px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("An interest rate that is tied to an index and will change periodically over the course of an entire loan.", "20px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
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

  it "should Go to ITD_5 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_2
        .navigateToItd_3
        .navigateToItd_4
        .navigateToItd_5
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
  end # KC1

end

describe 'Testing fonts in Objective 2' do

  page = nil

  before(:all) do
    page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  end

  after(:all) do
    page.quit
  end

  it "should Go to ITD_6 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
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

  it "should Go to ITD_7 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_6
        .navigateToItd_7
        .getText("")
        .checkText("What happens when I have more than one loan?", "25px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Fees", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Interest", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Principal", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Loan 1", "15px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Which part of my loan do my payments go to?", "25px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Fees", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Interest", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Principal", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Loan 2", "15px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
  end

  it "should Go to ITD_8 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_6
        .navigateToItd_7
        .navigateToItd_8
        .getText("")
        .checkText("What happens if I don’t pay the interest on my loan?", "30px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("What happens if I don’t pay the interest on my loan?", "30px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Capitalization is the addition of unpaid interest to the principal balance of a loan", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("If interest is not paid as it accrues, your lender may capitalize it", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("This will increase the principal and the total cost of the loan, and can increase your monthly payments", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Tip: If you are financially capable, you should pay the interest on your loans during your schooling, to avoid capitalization.", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("January", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("February", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("March", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("April", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("May", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("June", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("July", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("August", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("September", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("October", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("November", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("December", "20px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Interest", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("Principal", "15px", "\"opensans_semibold\"","rgba(100, 108, 111, 1)")
  end

  it "should Go to ITD_9 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_6
        .navigateToItd_7
        .navigateToItd_8
        .navigateToItd_9
        .getText("")
        .checkText("How much should I pay each month?", "25px", "\"opensans_regular\"","rgba(100, 108, 111, 1)")
        .getText("")
        .checkText("At minimum, keep up with each month’s interest and any fees", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("The rest of your payment goes towards the principal", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Overpayment is a great idea for chipping away at your principal, faster -- and lowering your interest payments at the same time!", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("You may also choose to make an overpayment if you want to cover future payment(s), for instance if you are going on vacation", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Month 1", "20px", "\"opensans_ligt\"","rgba(127, 127, 127, 1)")
        .getText("")
        .checkText("Month 2", "20px", "\"opensans_ligt\"","rgba(127, 127, 127, 1)")
        .getText("")
        .checkText("Month 3", "20px", "\"opensans_ligt\"","rgba(127, 127, 127, 1)")
  end

  it "should Go to ITD_10 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_6
        .navigateToItd_7
        .navigateToItd_8
        .navigateToItd_9
        .navigateToItd_10
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
  end # KC2

end

describe 'Testing fonts in Objective 3' do

  page = nil

  before(:all) do
    page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  end

  after(:all) do
    page.quit
  end

  it "should Go to ITD_11 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_11
        .getText("")
        .checkText("What can I do if I am having trouble making my loan payments?", "25px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Deferment", "20px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Forbeance", "20px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("A postponement of payment on a loan that is allowed under certain conditions", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Interest does not accrue during deferment on Direct Subsidized Loans, Subsidized Federal Stafford Loans, and Federal Perkins Loans", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("All other federal student loans that are deferred will continue to accrue interest", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Any unpaid interest that accrued during the deferment period may be capitalized", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("A period during which your monthly loan payments are temporarily suspended or reduced", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Principal payments are postponed but interest continues to accrue", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Unpaid interest that accrues during the forbearance will be capitalized, increasing the total amount you owe", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("What happens if I don’t make my payments?", "25px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Delinquent", "20px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("When the servicer does not receive payments by the due date", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("A loan remains delinquent until the borrower makes up the missed payment(s) through payment, deferment or forbearance", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Missed payments may result in assessment of late fees and negative credit reporting", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("If you are unable to make payments, you should contact your loan servicer to discuss options to keep the loan in good standing", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Being delinquent by not making the minimum payment due may have a negative impact on your credit score", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .checkText("What happens if I stop paying altogheter?", "25px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Default", "20px", "\"opensans_semibold\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Failing to repay a loan according to the terms agreed to in your Master Promissory Note", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("For most federal student loans, a loan defaults if there have been no payments in more than 270 days", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("For private student loans, consult your servicer to find out the time period in which a loan defaults", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("You may experience serious legal consequences if you default", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Defaulting on your student loans may have a negative impact on your credit score", "15px", "\"opensans_light\"","rgba(255, 255, 255, 1)")

  end

  it "should Go to ITD_12 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_11
        .navigateToItd_12
        .getText("")
        .checkText("Stay on top of your student loans", "35px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Check out “5 Habits of Successful Student Loan Borrowers” for more ideas.", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("Avoid forbearance", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Stick with repayment", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Sign up for auto debit", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Stay connected", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Establish an online account", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
        .checkText("Talk to your servicer", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
        .getText("")
  end

  it "should Go to ITD_13 and check Text" do
    page
        .navigateToModuleMatrixPage
        .navigateToItd_1
        .navigateToItd_11
        .navigateToItd_12
        .navigateToItd_13
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
        .getText("")
        .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
  end # KC3

end

describe 'Testing fonts in Summary' do

  page = nil

  before(:all) do
    page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  end

  after(:all) do
    page.quit
  end

# it "should Go to ITD_14 and check Text" do
#   page
#       .navigateToModuleMatrixPage
#       .navigateToItd_1
#       .navigateToItd_14
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
#       .getText("")
#       .checkText("", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
# end # Poll

it "should Go to ITD_15 and check Text" do
   page
      .navigateToModuleMatrixPage
      .navigateToItd_1
      .navigateToItd_14
      .navigateToItd_15
      .getText("#page-container > div > div.items > div:nth-child(2) > div > div > div.drivenHeader.fadeIn.animated > div > div")
      .checkText("Summary", "45px", "\"opensans_regular\"","rgba(0, 0, 0, 1)")
      .getText("#page-container > div > div.items > div:nth-child(2) > div > div > div.list.fadeIn.animated > ul > li:nth-child(1) > p")
      .checkText("Know the terms of your loan and how it works", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
      .getText("#page-container > div > div.items > div:nth-child(2) > div > div > div.list.fadeIn.animated > ul > li:nth-child(2) > p")
      .checkText("Come up with a plan for repayment and adjust as necessary", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
      .getText("#page-container > div > div.items > div:nth-child(2) > div > div > div.list.fadeIn.animated > ul > li:nth-child(3) > p")
      .checkText("Contact your loan servicer with any questions or to utilize valuable resources", "20px", "\"opensans_light\"","rgba(0, 0, 0, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div:nth-child(1) > div")
      .checkText("Knowledge Check Score", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div:nth-child(2) > div > div > div > div:nth-child(2) > div")
      .checkText("out of", "25px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div.item.feedback > div")
       .checkText("Good effort,
but you might want to go back and review the concepts you missed", "20px", "\"opensans_light\"","rgba(255, 255, 255, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div:nth-child(2) > div > div > div > div:nth-child(1) > div")
      .checkText("0", "125px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div:nth-child(2) > div > div > div > div:nth-child(3) > div")
      .checkText("3", "125px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
      .getText("#page-container > div > div.items > div:nth-child(1) > div > div > div > div:nth-child(2) > div > div > div > div:nth-child(3) > div")
      .checkText("3", "125px", "\"opensans_regular\"","rgba(255, 255, 255, 1)")
end # Summary

end
