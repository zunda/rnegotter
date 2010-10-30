# unit test cases for twitter_reader.rb
require 'rnegotter/twitter_reader.rb'
require 'pp'

class TwitterReaderTest < Test::Unit::TestCase
	def setup
		@reader = TwitterReader.new(:user => 'zundan')
	end

	def test_timeline
		pp @reader.timeline
	end
end
