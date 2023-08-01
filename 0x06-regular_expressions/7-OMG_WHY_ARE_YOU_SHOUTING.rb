#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the pattern for only capital letters
matches = input_string.scan(/[A-Z]/)

# Join the matched results and print
puts matches.join
