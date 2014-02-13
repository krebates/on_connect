require 'rspec'

require_relative '../lib/on_connect'

OnConnect.api_key = ENV['on_connect_api_key']

require 'vcr'

VCR.configure do |c|
	c.cassette_library_dir = 'spec/cassettes'
	c.hook_into :webmock # or :fakeweb
	c.configure_rspec_metadata!
	c.default_cassette_options = { :record => :new_episodes }
	c.filter_sensitive_data('<ONCONNECT API KEY>') { OnConnect.api_key }
end

RSpec.configure do |c|
	# so we can use :vcr rather than :vcr => true;
	# in Rspec 3 this will no longer be necessary.
	c.treat_symbols_as_metadata_keys_with_true_values = true
end