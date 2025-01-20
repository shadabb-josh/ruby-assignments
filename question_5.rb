# # Taking IP address as input
# puts 'Enter IP Address: '
# ip = gets.chomp.strip

# # Extracting the first octet
# # first -> takes the first segment 
# # to_i -> convert it to an integer 
# first_octet = ip.split('.').first.to_i

# # Determining the IP class
# if first_octet >= 1 && first_octet <= 126
#   puts 'Class A'
# elsif first_octet >= 128 && first_octet <= 191
#   puts 'Class B'
# elsif first_octet >= 192 && first_octet <= 223
#   puts 'Class C'
# elsif first_octet >= 224 && first_octet <= 239
#   puts 'Class D'
# elsif first_octet >= 240 && first_octet <= 255
#   puts 'Class E'
# else
#   puts 'Invalid IP Address'
# end

# Taking IP address as input
puts 'Enter IP Address: '
ip = gets.chomp.strip

# Validate IP address with RegEx
if ip =~ /^\d{1,3}(\.\d{1,3}){3}$/ 
  first_octet = ip.split('.').first.to_i

  # Determine the IP class using a single condition with ranges
  case first_octet
  when 1..126
    # Loopback address means, address used to test the network functionality on local machine
    puts first_octet == 127 ? 'Class A (Loopback Address)' : 'Class A'
  when 128..191
    puts 'Class B'
  when 192..223
    puts 'Class C'
  when 224..239
    puts 'Class D'
  when 240..255
    puts 'Class E'
  else
    puts 'Invalid IP Address: Octets must be in between 0 and 255.'
  end
else
  puts 'Invalid IP Address: Check Format Please.....'
end

