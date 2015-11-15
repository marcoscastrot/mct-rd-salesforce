require 'minitest/autorun'
require 'mct-rd-salesforce'

class MctRdSalesforceTestClient < Minitest::Test

  def test_client
    client_keys = {
      "username" => "your_username",
      "password" => "your_password",
      "security_token" => "your_security_token",
      "client_id" => "your_client_id",
      "client_secret" => "your_client_secret"
    }

    client = MctRdSalesforce::Client.new.getRestfoceClient(client_keys)
    refute_nil(client)
  end
end
