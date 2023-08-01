#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern that starts with 'h' followed by 'bt' and ends with 'n' but not more than that
matches = input_string.scan(/hbt+n/)

# Join the matched results and print
puts matches.join
