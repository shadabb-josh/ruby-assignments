# Write a program to display number is prime or not 

# Taking user input and converting it to integer
puts 'Enter Number : '
number = gets.chomp.to_i

# Base Condition
if number <= 1
    puts 'False'
    return 
elsif number == 2
    puts 'True'
    return
elsif number.even?
    puts "False"
    return 
end

# Looping through to check number is divisible by any other number
index = 3
while index * index < number do
    if number % index == 0
        puts 'False'
        return 
    end
    index += 2
end

puts 'True'


