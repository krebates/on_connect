require 'faraday'
require 'json'

module OnConnect
	class Movie
		attr_reader :theatreId, :name, :location, :distance, :address, :street, :street2, :city, :state, :postalCode, :country, :telephone, :geoCode
			def initialize(attributes = {})
				@theatre_id = attributes['theatreId']
				@name = attributes['name']
				@location = attributes['location']
				@distance = attributes['distance']
				@address = attributes['address']
				@street = attributes['street']
				@street2 = attributes['street2']
				@city = attributes['city']
				@state = attributes['state']
				@postal_code = attributes['postalCode']
				@country = attributes['country']
				@telephone = attributes['telephone']
				@geo_code = attributes['geoCode']
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