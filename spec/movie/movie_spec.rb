require 'spec_helper'
require 'pry'


describe OnConnect::Movie, :vcr do
	it 'allows me to search for a local theater and list movies' do	
		movies = OnConnect::Movie.search_zip('10009', '2014-02-20', 1)
		expect(movies).to_not eql([])
		expect(movies.first).to be_kind_of(OnConnect::Movie)

		# expect(movies.first.title).to include('Frozen')
	end

	# it 'allows me to '
	# end

end