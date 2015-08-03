require "datameter/version"
require "datameter/spectranet_user"

module Datameter
  def self.get_data_balance(provider, username, pwd)
  	# only spectranet for now.
  	user = SpectranetUser.new(username, pwd)
  	user.get_data_balance
  end
end
