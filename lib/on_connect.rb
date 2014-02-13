require "on_connect/version"
require "on_connect/movie"

module OnConnect
	def self.api_key
		@api_key
	end

	def self.api_key=(token)
		@api_key = token
	end
end
