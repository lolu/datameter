require_relative 'browserlike'
class SpectranetUser
	include BrowserLike
	attr_reader :username, :password

	URL = 'http://selfcare.spectranet.com.ng'
	FORM_ID = 'id4'
	DATA_BALANCE_XPATH = %q{//*[@id="id20"]/table/tbody/tr[3]/td[2]/label}
	DATA_BALANCE_CSS_PATH = %q{#id13 > table > tbody > tr:nth-child(3) > td:nth-child(2) > label}

	def initialize username, password
		@username = username
		@password = password
	end

	def get_data_balance
		visit_link URL
		submit_form FORM_ID, {'signInForm.username' => username, 'signInForm.password' => password}
		#return find_in_page DATA_BALANCE_XPATH
	end

end