require 'mct-rd-salesforce/client'

module MctRdSalesforce 
	class Lead
	    def load(auth_keys = {})
	        client = MctRdSalesforce::Client.new.getRestfoceClient(auth_keys)
	        leads = client.query("select id, firstname , lastname, email, company, title, phone, website from Lead");
	    end

	    def get(leadId, auth_keys = {})
	        client = MctRdSalesforce::Client.new.getRestfoceClient(auth_keys)
	        leads = client.query("select id, firstname , lastname, email, company, title, phone, website from Lead where id = '" + leadId + "'");
	        lead = leads.first;
	    end

	    def create(auth_keys = {}, opts = {}) #id or false
	        client = MctRdSalesforce::Client.new.getRestfoceClient(auth_keys)
	        newLead = client.create('Lead',
	                    FirstName: opts[:name],
	                    LastName: opts[:lastName],
	                    Status: "Working - Contacted",
	                    Company: opts[:company],
	                    Email: opts[:email],
	                    Website: opts[:website],
	                    Phone: opts[:phone],
	                    Title: opts[:jobTitle]);
	    end

	    def update(auth_keys = {}, opts = {}) #true
	        client = MctRdSalesforce::Client.new.getRestfoceClient(auth_keys)
	        client.update('Lead',
        			Id: opts[:id],
                    FirstName: opts[:name],
                    LastName: opts[:lastName],
                    Status: "Working - Contacted",
                    Company: opts[:company],
                    Email: opts[:email],
                    Website: opts[:website],
                    Phone: opts[:phone],
                    Title: opts[:jobTitle]);
    	end

	    def destroy(leadId, auth_keys = {}) #true
	    	client = MctRdSalesforce::Client.new.getRestfoceClient(auth_keys)
	    	client.destroy('Lead', leadId)
	    end
	end
end