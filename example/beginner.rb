require 'selenium-webdriver'
require 'phantomjs'

# webdriver.PhantomJS
# install gems and phantomJs first
Selenium::WebDriver::PhantomJS.path = 'C:\\Users\\Ericqiu\\RubymineProjects\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe'
driver = Selenium::WebDriver.for :phantomjs
driver.navigate.to "https://www.wikipedia.org/"

# driver.navigate.to "http://www.google.com"
# element = driver.find_element(:name, 'q')
# element.send_keys "Hello WebDriver!"
# element.submit
puts driver.title

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.find_element(:class => 'footer') }
# wait.expect(page).to have_selector '#main_div_id'
result = driver.find_element(:class => 'footer')
puts result.text

driver.quit