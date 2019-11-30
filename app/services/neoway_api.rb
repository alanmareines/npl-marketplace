class NeowayApi
  require 'rest-client'
  require 'json'

  def initialize(npl)
    @cpf = 22424597839
    @fields = "cpf,nome,situacaoCpf,imoveis.endereco.logradouro,imoveis.endereco.numero,imoveis.endereco.complemento,imoveis.endereco.bairro,imoveis.endereco.municipio"
    # get_cpf_info(token, cpf, fields)
  end

  def fetch_token
    body = { application: 'banco-votorantim-app', application_secret: 'htlO5fM2' }
    url = 'https://api.neoway.com.br/auth/token'
    response = RestClient.post(url, body.to_json, { content_type: :json, accept: :json })
    token_id = JSON.parse(response)["token"]
    token = "Bearer " + token_id
  end

  def get_cpf_info
    token = fetch_token
    query = { fields: @fields }
    header = { Authorization: token }
    url = "https://api.neoway.com.br/v1/data/pessoas/#{@cpf}"
    response = RestClient::Request.execute(method: :get, url: url,
                                           headers: header)
    debtor_info = JSON.parse(response)
  end
end
