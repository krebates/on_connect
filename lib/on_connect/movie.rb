require 'faraday'
require 'json'

module OnConnect
	class Movie
		attr_reader :title, :shortDescription, :code
			def initialize(attributes = {})
				@title = attributes['title']
				@short_description = attributes['shortDescription']
				@code = attributes['code']
			end

		class << self
			def search_zip(zip, startDate, radius)
				res = connection.get 'v1/movies/showings', {
					zip: zip,
					startDate: startDate,
					radius: radius,
					api_key: OnConnect.api_key
				}
				res = JSON.parse(res.body)
				if res
					res.map do |res_hash|
						new(res_hash)
					end
				end	
			end

			protected

			def connection
			  conn ||= Faraday.new(:url => 'http://data.tmsapi.com') do |faraday|
			  faraday.request  :url_encoded             # form-encode POST params
			  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
			end
			end
		end
	end
end