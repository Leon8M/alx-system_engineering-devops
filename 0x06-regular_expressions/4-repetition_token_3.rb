#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern that starts with 'h', followed by 'b' if present, and then followed by 't' repeated one or more times
matches = input_string.scan(/hb?+t+/)

# Join the matched results and print
puts matches.join
