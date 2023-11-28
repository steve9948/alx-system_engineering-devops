#!/usr/bin/env ruby
# A regular expressions matching capital letters

puts ARGV[0].scan(/^[A-Z]*$/).join
