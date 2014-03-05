require 'spec_helper'
require 'pry'


describe OnConnect::Movie, :vcr do
	it 'allows me to search for a local theater and list movies' do	
		movies = OnConnect::Movie.search_zip('10009', Time.now.strftime('%Y-%m-%d'), 1)
		expect(movies).to_not eql([])
		expect(movies.first).to be_kind_of(OnConnect::Movie)
	end
end