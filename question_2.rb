# Taking user input
puts 'Enter Grade : '
grade = gets.chomp.to_i

# Validation for user input 
if(grade < 0)
  puts 'Enter Valid Grade !....'
  return
end

# Conditionals statements to determine school level
if grade <= 5
  puts 'Elementary'
elsif grade <= 8
  puts 'Middle School'
elsif grade <=12
  puts 'High School'
else
  puts 'College'
end 
