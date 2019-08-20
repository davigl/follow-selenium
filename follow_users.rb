# Using Selenium Webdriver gem.

require "selenium-webdriver"

# Constants

DEFAULT_NUMBER_PAGES = 100

# Path Login Variable.

login_path = "http://github.com/login"

# Credentials and some Variables.

username_input = 'Insert your github username'
password_input = 'Insert your github password'
most_active_users = %w[michaelklishin jordansissel drnic sferik svenfuchs radar josevalim postmodern fsouza kennethreitz sferik isaacs visionmedia tmcw]

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
sleep 10

# Iterating followers page from the most active users then following.

most_active_users.each do |user|
	path = "https://github.com/%s/followers" % [user]
	driver.navigate.to path
	sleep 1

	DEFAULT_NUMBER_PAGES.times do |page|
		follow_button = driver.find_elements(xpath: "//input[@aria-label='Follow this person']")
		follow_button.each { |follow_element| follow_element.submit; sleep 1 }

		next_button = driver.find_element(link_text: 'Next')
		next_button.any? ? next_button.click : break
	end
end

driver.quit
