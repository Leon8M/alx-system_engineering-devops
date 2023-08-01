#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern for a 10-digit phone number
matches = input_string.scan(/^\d{10}$/)

# Join the matched results and print
puts matches.join
