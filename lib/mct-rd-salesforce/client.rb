require 'restforce'

module MctRdSalesforce
	class Client
		def getRestfoceClient(opts = {})
	        Restforce.new :username => opts["username"], #'marcoscastrot@gmail.com',
			  :password       => opts["password"], #'RdSale00',
			  :security_token => opts["security_token"], #'BEiWG5t5ksss9TYSsyKwX3AJ',
			  :client_id      => opts["client_id"], #'3MVG9KI2HHAq33RzThySBJALGiShFAkW2FdKpRcLGv1HWskRFa4t_B6gusRM8bYvNAqenV21MHtsGa.ySEUNY',
			  :client_secret  => opts["client_secret"] #'3280416324043101337'
		end
	end
end