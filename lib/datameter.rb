require_relative "datameter/version"
require_relative "datameter/spectranet_user"

module Datameter
  def self.get_data_balance(provider, username, pwd)
  	case provider
  	when "spectranet"
  		user = SpectranetUser.new(username, pwd)
  		user.get_data_balance
  	else
  		puts "ISP - #{provider} not available"
  	end
  end
end