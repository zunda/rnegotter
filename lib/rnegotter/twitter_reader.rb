# twitter_reader.rb
require 'twitter'

class TwitterReader < StandardError; end

class TwitterReader
	def initialize(config_hash)
		@config = config_hash
	end

	def timeline
		Twitter.timeline(@config[:user])
	end
end
