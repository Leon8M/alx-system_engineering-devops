#!/usr/bin/env ruby

# The first command-line argument will be the input string
input_string = ARGV[0]

# Match the word "School" in the input string
matches = input_string.scan(/School/)

# Join the matched results and print
puts matches.join
