require_relative 'browserlike'
class SpectranetUser
	include BrowserLike
	attr_reader :username, :password

	URL = 'http://selfcare.spectranet.com.ng'
	FORM_ID = 'id4'
	DATA_BALANCE_XPATH = %q{//table[@class='dataTable']/tr[1]/td[2]/label}
	
	def initialize username, password
		@username = username
		@password = password
	end

	def get_data_balance
		visit_link URL
		balance = find_in_page FORM_ID, {'signInForm.username' => username, 'signInForm.password' => password}, DATA_BALANCE_XPATH
		if balance != 0 then return balance else return nil end
	end

end