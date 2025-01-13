# Taking IP address as input
puts 'Enter IP Address: '
ip = gets.chomp

# Extracting the first octet
# first -> takes the first segment 
# to_i -> convert it to an integer 
first_octet = ip.split('.').first.to_i

# Determining the IP class
if first_octet >= 1 && first_octet <= 126
  puts 'Class A'
elsif first_octet >= 128 && first_octet <= 191
  puts 'Class B'
elsif first_octet >= 192 && first_octet <= 223
  puts 'Class C'
elsif first_octet >= 224 && first_octet <= 239
  puts 'Class D '
elsif first_octet >= 240 && first_octet <= 255
  puts 'Class E '
else
  puts 'Invalid IP Address'
end
