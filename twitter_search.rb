require 'sinatra'
require 'twitter'

before do
	config = {
		:consumer_key => 'xs2IKEz3RxSWrCGz5my6nr0Sa',
		:consumer_secret => 'DucQHToymIgRMBDa4HaOa6zSXpogK13yud4VyQAoS6iPjobIWe',
		:access_token => '965555302560075776-IOLiakeqrcLIWEYSqZKUF1vFHP5V1rI',
		:access_token_secret => 'jvdaiiXPh1tkQ2099FFwmaKnAm8OEcf5TjNXXZU7laj8g'
	}
	@client = Twitter::REST::Client.new(config)
end

get '/twitter_search' do
	unless params[:search].nil?
		search_string = params[:search]
		results = @client.search(search_string)
		@tweets = results.take(20)
	end
	erb :twitter_search
end