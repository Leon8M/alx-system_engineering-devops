#!/usr/bin/env ruby

# The first command-line argument will be the log file path
log_file_path = ARGV[0]

# Function to extract sender, receiver, and flags from the log entry
def extract_info(log_entry)
  sender = log_entry.scan(/\[from:(.*?)\]/).flatten.first
  receiver = log_entry.scan(/\[to:(.*?)\]/).flatten.first
  flags = log_entry.scan(/\[flags:(.*?)\]/).flatten.first
  "#{sender},#{receiver},#{flags}"
end

# Read the log file line by line
File.open(log_file_path, 'r') do |file|
  file.each_line do |line|
    # Match the lines with the desired log entry format
    if line =~ /mdr:.*\[from:.*\] \[to:.*\] \[flags:.*\]/
      puts extract_info(line)
    end
  end
end
