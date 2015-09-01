def say(msg)
	puts "---------- #{msg} ----------"
end

say "How much is your order?"
num1 = gets.chomp

say "Was the service bad, average, or good?"
service_rating = gets.chomp.downcase

if service_rating == 'bad'
	result = num1.to_f * 0.10
elsif service_rating == 'average'
  	result = num1.to_f * 0.15
elsif service_rating == "good" 
  	result = num1.to_f * 0.20
end

total = num1.to_f.round + result.to_f
puts "You should tip $#{result}!"
puts "Your total bill is $#{total}"