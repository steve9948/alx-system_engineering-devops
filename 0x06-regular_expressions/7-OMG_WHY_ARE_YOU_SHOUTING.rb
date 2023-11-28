#!/usr/bin/env ruby
# A regular expressions matching uppercase letters

puts ARGV[0].scan(/[A-Z]+/).join
