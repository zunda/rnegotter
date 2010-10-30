#!/usr/bin/ruby
# usage: ruby test/run-test.rb [test-files]
# runs tests in test-files if specified or default tests if none specified
#
# Copyright (C) 2010 by zunda <zunda at freeshell.org>
#
# Permission is granted for use, copying, modification,
# distribution, and distribution of modified versions of this
# work as long as the above copyright notice is included.
#
require 'test/unit'

topdir = File.expand_path(File.join(File.dirname($0), '..'))
$LOAD_PATH.unshift(File.join(topdir, 'lib'))

tests = if ARGV.empty?
	Dir.glob(File.join(topdir, 'test', 'test*.rb'))
else
	ARGV.map{|p| File.join(topdir, 'test', File.basename(p))}
end

tests.each do |path|
	load path
end
