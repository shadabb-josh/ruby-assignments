# ('a'..'z') -> Range of letters 
# to_a -> creates a array of letters
# reverse -> as name suggests, it reverses the array

# Previous Code
for i in ('a'..'z').to_a.reverse
  puts i
end

# Improved code
# ('a'..'z') -> Create a range object
# reverse_each -> Iterates over the range in reverse  
('a'..'z').reverse_each do |i|
  puts i
end
