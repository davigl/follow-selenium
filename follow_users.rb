# Using Selenium Webdriver gem.

require "selenium-webdriver"

# Constants

DEFAULT_NUMBER_PAGES = 100

# Path Login Variable.

login_path = "http://github.com/login"

# Credentials and some Variables.

username_input = 'Insert your username here.'
password_input = 'Insert your password here.'
most_active_users = %w[fabpot andrew taylorrotwell egoist HugoGiraudel ornicar bebraw nelsonic alexcrichton jonathanong mikermcneil benbalter jxnblk yegor256 orta rstacruz afc163 joshaber]

# Driver selenium, using chrome, install chrome driver according with you installed google chrome.
# Im using version 74, to see your chrome version checkout visiting your about tab.

driver = Selenium::WebDriver.for :chrome

# Navigating to login path.

driver.navigate.to login_path

# Getting login and password field.

username = driver.find_element(id: 'login_field')
password = driver.find_element(id: 'password')

# Filling in with your credentials.

username.send_keys(username_input)
sleep 1
password.send_keys(password_input)
sleep 1

# Getting login input and clicking in it.

login_form = driver.find_element(xpath: "//input[@value='Sign in']")
sleep 1
login_form.click
sleep 1

most_active_users.each do |user|
	DEFAULT_NUMBER_PAGES.times do |page|
		path = "https://github.com/%s/followers?page=%s" % [user, page]
		driver.navigate.to path
		sleep 1

		follow_button = driver.find_elements(xpath: "//input[@aria-label='Follow this person']")

		if follow_button.any?
			follow_button.each { |follow_element| follow_element.submit; sleep 1 }
		else
			break
		end
	end
end

driver.quit