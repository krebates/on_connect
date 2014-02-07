require 'spec_helper'

describe OnConnect::Movie do
	it 'allows me to search for a movie' do	
		movies = OnConnect::Movie.search('Frozen')
		expect(movies).to_not eql([])
		expect(movies.first).to be_kind_of(OnConnect::Movie)
	end
end