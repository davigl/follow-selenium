require "selenium-webdriver"

module Selenium
	@@driver = Selenium::WebDriver.for :chrome

	def navigate(path)
		@@driver.navigate.to path
	end

	def click(element)
		@@driver.click(element)
	end

	def find_by_id(id)
		@@driver.find_element(id: id)
	end

	def find_by_xpath(xpath)
		@@driver.find_element(xpath: xpath)
	end

	def find_by_link_text(link_text)
		@@driver.find_element(link_text: link_text)
	end

	def find_many_elements_by_xpath(xpath)
		@@driver.find_elements(xpath: xpath)
	end

	def quit
		@@driver.quit
	end
end