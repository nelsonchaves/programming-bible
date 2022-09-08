get('/users') is called:

def self.get(endpoint)
  perform_authenticated_request do |access_token|
    begin
      response = RestClient.get(zuora_url(endpoint),
        { Authorization: "Bearer #{access_token}" })
      JSON.parse(response)
    rescue RestClient::ExceptionWithResponse => e
      puts e
      puts e.message
    end
  end
end

def self.authenticate
  response = RestClient.post(
    zuora_url('/oauth/token'),
    client_id: ENV['ZUORA_CLIENT_ID'],
    client_secret: ENV['ZUORA_CLIENT_SECRET'],
    grant_type: 'client_credentials'
  )
  @access_token = JSON.parse(response).dig('access_token')
  !@access_token.nil?
end

def self.perform_authenticated_request
  begin
    authenticate unless @access_token
    retries ||= 0
    yield(@access_token)
  rescue Exception => e
    authenticate && retry if (retries += 1) < 10
    raise e
  end
end
