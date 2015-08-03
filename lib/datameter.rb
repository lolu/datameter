require_relative "./datameter/spectranet_user"
require "datameter/version"

module Datameter
  def self.get_data_balance(provider, username, pwd)
  	# only spectranet for now.
  	user = SpectranetUser.new(username, pwd)
  	user.get_data_balance
  end
end
