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

	def find_in_page form_id, form_params, path
		form = page.form_with(:id => form_id) do |f|
			form_params.each do |key, value|
			    field = f.field_with(:name => key)
			    field.value = value
			end
	  	end.click_button

	  	page = form
	  	
	  	page.search(path).each do |node|
	  		return node.text.strip
	  	end
	end
end
