require 'selenium-webdriver'
require 'phantomjs'

# webdriver.PhantomJS
# install gems and phantomJs first
Selenium::WebDriver::PhantomJS.path = 'C:\\Users\\Ericqiu\\RubymineProjects\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe'
driver = Selenium::WebDriver.for :phantomjs
driver.get 'http://stackoverflow.com/'
puts driver.title

# additional keys that can be passed in are:
# :path => String, :secure -> Boolean, :expires -> Time, DateTime, or seconds since epoch
driver.manage.all_cookies.each { |cookie|
  puts "#{cookie[:name]} => #{cookie[:value]}, #{cookie[:domain]}"
}

# add cookie !! domain is required !!
driver.manage.add_cookie(:name => 'key', :value => 'value', :domain => '.stackoverflow.com')
driver.manage.all_cookies.each { |cookie|
  puts "#{cookie[:name]} => #{cookie[:value]}, #{cookie[:domain]}"
}
# Delete By name
driver.manage.delete_cookie 'key'
# Or delete all of them
driver.manage.delete_all_cookies
driver.quit