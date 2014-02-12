require "on_connect/version"
require "on_connect/movie"

module OnConnect
	def api_key
		@api_key
	end

	def api_key=(token)
		@api_key = token
	end
end
