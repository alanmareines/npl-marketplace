class NeowayApi
  require 'rest-client'
  require 'json'

  def initialize(npl)
    @cpf = npl.debtor_cpf_cnpj
  end

  def fetch_token
    body = { application: ENV['APPLICATION_API_NEOWAY'], application_secret: ENV['APPLICATION_API_SECRET_NEOWAY'] }
    url = 'https://api.neoway.com.br/auth/token'
    response = RestClient.post(url, body.to_json, { content_type: :json, accept: :json })
    token_id = JSON.parse(response)["token"]
    "Bearer " + token_id
  end

  def get_cpf_info
    token = fetch_token
    header = { Authorization: token }
    url = "https://api.neoway.com.br/v1/data/pessoas/#{@cpf}"
    RestClient::Request.execute(method: :get, url: url,
                                headers: header)
  end
end