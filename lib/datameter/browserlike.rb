require 'mechanize'

module BrowserLike
	
	def browser
		@browser ||= Mechanize.new
	end

	def page
		@page
	end

	def visit_link link
		@page = browser.get link
	end


	def submit_form form_id, form_params
		form = page.form_with(:id => form_id) do |f|
			# form_params.each do |key, value|
			# 	f.field_with(:name => key).value(value)
			# end
			x = f.field_with(:name => 'signInForm.username')
			x.value = '19841012'
			y = f.field_with(:name => 'signInForm.password')
			y.value = 'chlorMEL1$'
	  	end.click_button

	  	page = form
	  	puts '*******************************************************************************'
	  	page.search(%q{//table[@class='dataTable']/tr[1]/td[2]/label}).each do |node|
	  		puts node.text.strip
	  	end

	end

	def find_in_page path
		page.search path do |node|
			node.text.strip
		end
	end
end
