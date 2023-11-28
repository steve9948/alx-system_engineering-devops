#!/usr/bin/env ruby
#[from:] [to:] [flags:]
#Sender phone number name or country code 
#Receiver phone name, name or country code
#Flags used

puts ARGV[0].scan(/\[from:(\w+|+\d{11,11})\]\s\[to:(\w+|+\d{10,10})\]\s\[flags:-?\d:-?\d:-?\d:-?\d:-?\d\]/).join
