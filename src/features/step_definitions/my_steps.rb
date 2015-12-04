require 'selenium-webdriver'
require_relative '../../../src/pageObjects/abstract_page'
require_relative '../../../src/pageObjects/home_page'
require_relative '../../../src/pageObjects/itd_5'


Before  do
  @page = nil

  #page = AbstractPage.new(Selenium::WebDriver.for :firefox)
  Selenium::WebDriver::Chrome.driver_path = "e:/Training Automation/chromedriver.exe"
  @page = AbstractPage.new(Selenium::WebDriver.for :chrome)
end

After do
  @page.quit
end

Given(/^I navigate to KC1 page itd_5$/) do
  @page.navigateToModuleMatrixPage
  .navigateToItd_1
  .navigateToItd_5
end

When(/^I select the correct answer for KC1$/) do
  @page.selectKnowledgeCheckAnswer("#question_1 > label:nth-child(4) > div")
  sleep 2
end

Then(/^I get the Correct Answer Feedback for KC1$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("THAT’S RIGHT!", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
end

Given(/^I navigate to KC2 page itd_10$/) do
  @page.navigateToModuleMatrixPage
      .navigateToItd_1
      .navigateToItd_10
end

When(/^I select the correct answer for KC2$/) do
  @page.selectKnowledgeCheckAnswer("#question_2 > label:nth-child(2) > div")
  sleep 2
end

Then(/^I get the Correct Answer Feedback for KC2$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("THAT’S RIGHT!", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".message")
      .checkText("Capitalization is when interest is added to the balance of the principal.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
end

Given(/^I navigate to KC3 page itd_13$/) do
  @page.navigateToModuleMatrixPage
      .navigateToItd_1
      .navigateToItd_13
end

When(/^I select the correct answer for KC3$/) do
  @page.selectKnowledgeCheckAnswer("#question_3 > label:nth-child(4) > div")
  sleep 2
end

Then(/^I get the Correct Answer Feedback for KC3$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("THAT’S RIGHT!", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".message")
      .checkText("Talk to your servicer if you are struggling and they can help out.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
end

When(/^I select the the first incorrect answer for KC1$/) do
  @page.selectKnowledgeCheckAnswer("#question_1 > label:nth-child(1) > div")
  sleep 2
end

When(/^I select the second incorrect answer for KC1$/) do
  @page.selectKnowledgeCheckAnswer("#question_1 > label:nth-child(2) > div")
  sleep 2
end

When(/^I select the third incorrect answer for KC1$/) do
  @page.selectKnowledgeCheckAnswer("#question_1 > label:nth-child(3) > div")
  sleep 2
end

Then(/^I get the incorrect Answer Feedback for KC1$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("NOT QUITE", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".message")
      .checkText("The monthly interest will be $20;\n(.05 X $5000)/12 = approximately $20", "25px", "opensans_light","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
end

When(/^I select the the first incorrect answer for KC2$/) do
  @page.selectKnowledgeCheckAnswer("#question_2 > label:nth-child(1) > div")
  sleep 2
end

When(/^I select the second incorrect answer for KC2$/) do
  @page.selectKnowledgeCheckAnswer("#question_2 > label:nth-child(3) > div")
  sleep 2
end

When(/^I select the third incorrect answer for KC2$/) do
  @page.selectKnowledgeCheckAnswer("#question_2 > label:nth-child(4) > div")
  sleep 2
end

Then(/^I get the incorrect Answer Feedback for KC2$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("NOT QUITE", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".message")
      .checkText("When interest is capitalized, it is added to the principal.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
  end

When(/^I select the the first incorrect answer for KC3$/) do
  @page.selectKnowledgeCheckAnswer("#question_3 > label:nth-child(1) > div")
  sleep 2
end

When(/^I select the second incorrect answer for KC3$/) do
  @page.selectKnowledgeCheckAnswer("#question_3 > label:nth-child(2) > div")
  sleep 2
end

When(/^I select the third incorrect answer for KC3$/) do
  @page.selectKnowledgeCheckAnswer("#question_3 > label:nth-child(3) > div")
  sleep 2
end

Then(/^I get the incorrect Answer Feedback for KC3$/) do
  @page
      .getText(".kc-list-response .items .item .header")
      .checkText("NOT QUITE.", "20px", "opensans_regular","rgba(255, 255, 255, 1)")
      .getText(".message")
      .checkText("If you are having difficulty making loan payments, contact your loan servicer to figure out the best option.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
      .getText(".indication")
      .checkText("Click the right arrow to continue.", "25px", "opensans_light","rgba(255, 255, 255, 1)")
end

Given(/^I navigate to Summary page$/) do
  @page.navigateToModuleMatrixPage
      .navigateToItd_1
      .navigateToItd_14
      .navigateToItd_15
end

Then(/^I get three out of three$/) do
  @page
      .getText(".score:nth-child(1)")
      .checkText("3", "14px", "'Helvetica Neue', Helvetica, Arial, sans-serif","rgba(51, 51, 51, 1)")
      .getText(".score:nth-child(2)")
      .checkText("out of", "14px", "'Helvetica Neue', Helvetica, Arial, sans-serif","rgba(51, 51, 51, 1)")
      .getText(".score:nth-child(3)")
      .checkText("3", "14px", "'Helvetica Neue', Helvetica, Arial, sans-serif","rgba(51, 51, 51, 1)")
end



