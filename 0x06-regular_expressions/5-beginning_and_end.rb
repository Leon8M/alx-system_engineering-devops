#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern that starts with 'h', followed by any single character (.), and then ends with 'n'
matches = input_string.scan(/^h.n$/)

# Join the matched results and print
puts matches.join
