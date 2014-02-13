require 'spec_helper'
require 'pry'

describe OnConnect::Movie do
	it 'allows me to search for a local theater and list movies' do	
		movies = OnConnect::Movie.search('10009', '2014-02-14', 1)
		expect(movies).to_not eql([])
		expect(movies.first).to be_kind_of(OnConnect::Movie)

		# expect(movies.first.title).to include('Frozen')
	end
end