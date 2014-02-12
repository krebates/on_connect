module OnConnect
	class Movie
		class << self
			def search(phrase)
				[new]
			end	

			protect
			def connection
			  conn ||= Faraday.new(:url => 'http://data.tmsapi.com') do |faraday|
			  faraday.request  :url_encoded             # form-encode POST params
			  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
			end
		end
	end
end