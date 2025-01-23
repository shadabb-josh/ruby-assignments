# REGEX Expressions
$MOBILE = /^[6-9]\d{9}$/
$EMAIL = /^[\w.%+-]+@[a-z\d.-]+\.[a-z]{2,}$/i
$NAME = /^[a-z\s]+$/i
$GENDER = /^[MF]$/i
$AMOUNT = /^\d+(\.\d{1,2})?$/

# added strip to remove leading and trailing spaces

# User input for mobile number & Check
puts 'Enter mobile number to check: '
mobile = gets.chomp.strip
if $MOBILE === mobile
  puts 'Valid Mobile Number'
else
  puts 'Invalid Mobile Number'
end

# User input for email ID & Check
puts 'Enter email to check: '
email = gets.chomp.strip
if  $EMAIL === email
  puts 'Valid Email Address'
else
  puts 'Invalid Email Address'
end

# User input for name & Check
puts 'Enter name to check: '
name = gets.chomp.strip
if $NAME === name
  puts 'Valid Name'
else
  puts 'Invalid Name'
end

# User input for gender & Check
puts 'Enter gender to check (M/F): '
gender = gets.chomp.strip
if $GENDER === gender
  puts 'Valid Gender'
else
  puts 'Invalid Gender'
end

# User input for amount & Check
puts 'Enter amount to check: '
amount = gets.chomp.strip
if  $AMOUNT === amount
  puts 'Valid Amount'
else
  puts 'Invalid Amount'
end
