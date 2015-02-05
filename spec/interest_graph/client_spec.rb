require 'spec_helper'

describe InterestGraph::Client do
  describe '#topics' do
    it 'returns topics with scores' do
      client = InterestGraph::Client.new('test_token')
      url = 'http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMachine_learning'

      mock_response = {"topics"=>[{"score"=>0.8, "topic"=>"Machine Learning", "id"=>2620}]}

      WebMock.stub_request(:get, "http://interest-graph.getprismatic.com/url/topics?data=http%253A%252F%252Fen.wikipedia.org%252Fwiki%252FMachine_learning").
        with(:headers => {'Token'=>'test_token'}).
        to_return(:status => 200, :body => mock_response.to_json, :headers => {:content_type => 'application/json'})

      topics = client.topics(url)

      expect(topics.size).to eq(1)
      expect(topics.first['score']).to eq(0.8)
      expect(topics.first['topic']).to eq('Machine Learning')
      expect(topics.first['id']).to eq(2620)
    end
  end
end

