require 'restforce'

module MctRdSalesforce
	class Client
		def getRestfoceClient(opts = {})
	        Restforce.new :username => opts["username"], 
			  :password       => opts["password"], 
			  :security_token => opts["security_token"], 
			  :client_id      => opts["client_id"], 
			  :client_secret  => opts["client_secret"] 
		end
	end
end