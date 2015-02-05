module InterestGraph
  class Client

    attr_accessor :api_token
    BASE_URL='http://interest-graph.getprismatic.com'

    def initialize(api_token)
      @api_token = api_token
    end

    def params
      { headers: { token: @api_token } }
    end

    def topics(url)
      response = HTTParty.get("#{BASE_URL}/url/topics", { query: { data: url }}.merge(params))
      return {} unless response.code == 200
      response['topics']
    end
  end
end

