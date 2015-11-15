require 'minitest/autorun'
require 'mct-rd-salesforce'

class MctRdSalesforceTestLead < Minitest::Test
  def test_crudLead
    client_keys = {
      "username" => "your_username",
      "password" => "your_password",
      "security_token" => "your_security_token",
      "client_id" => "your_client_id",
      "client_secret" => "your_client_secret"
    }

    leads = MctRdSalesforce::Lead.new.load(client_keys)
    refute_nil(leads)
    leadId = MctRdSalesforce::Lead.new.create(client_keys, {name: "Marcos", lastName: "Tinos", company: "company", email: "mct@force.com", website: "", phone: "", jobTitle: "" })
    refute_nil(leadId)
    lead = MctRdSalesforce::Lead.new.get(leadId, client_keys)
    refute_nil(lead)
    updated = MctRdSalesforce::Lead.new.update(client_keys, {id: leadId, name: "Marcos", lastName: "Tinos", company: "company2", email: "mct@force.com", website: "", phone: "", jobTitle: "" })
    assert_equal(true, updated)
    destroied = MctRdSalesforce::Lead.new.destroy(leadId, client_keys)
    assert_equal(true, destroied)    
  end
end