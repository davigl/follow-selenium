require_relative 'selenium'

include Selenium

class Follow
	DEFAULT_NUMBER_PAGES = 100

	# Constuctor, initialize some variables.

	def initialize(username, password)
		@username, @password = username, password
		@login_path = "https://github.com/login"
		@signin_xpath = "//input[@value='Sign in']"
		@follow_xpath = "//input[@aria-label='Follow this person']"
		@most_active_users = %w[michaelklishin jordansissel drnic sferik svenfuchs radar josevalim postmodern fsouza kennethreitz sferik isaacs visionmedia tmcw].shuffle
	end

	# Login method which navigates to login path, then fills with login and password then signin.

	def login
		navigate(@login_path)

		login_form = find_by_xpath(@signin_xpath)
		login_field = find_by_id('login_field')
		password_field = find_by_id('password')

		login_field.send_keys(@username); sleep 1
		password_field.send_keys(@password); sleep 1

		login_form.click; sleep 15
	end

	# Follow method which navigates to an popular user followers page, then starts to follow her followers.

	def follow
		@most_active_users.each do |user|
			path = "https://github.com/%s/followers" % [user]
			navigate(path)

			DEFAULT_NUMBER_PAGES.times do |page|
				follow_button = find_many_elements_by_xpath(@follow_xpath)
				follow_button.each { |follow_element| follow_element.submit; sleep 1 }

				next_button = find_by_link_text('Next')
				next_button.nil? ? break : next_button.click
			end
		end
	end

	# Exit method to quit chrome driver.

	def exit
		quit
	end

	# Run method.

	def run
		login; follow; quit
	end
end

Follow.new(ARGV[0].to_s, ARGV[1].to_s).run