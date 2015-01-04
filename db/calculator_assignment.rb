#Calculator Assignment dju

def question(ask)
	puts "<<< #{ask} >>>" 
end

question("What is your first number?")
num1 = gets.chomp

question("what's your second number?")
num2 = gets.chomp

question("What operation would you like to perform? 1) Add 2) Subtract 3) Multiply 4) Divide")
operator = gets.chomp

value = 0

def operation(operator, num1, num2)
	if operator.to_i==1
		value = num1.to_i+num2.to_i
	elsif operator.to_i==2
		value = num1.to_i-num2.to_i	
	elsif operator.to_i==3
		value = num1.to_i*num2.to_i	
	elsif operator.to_i==4
		value = num1.to_f/num2.to_f
	end
end

value= operation(operator, num1, num2).to_f
puts "Your value is #{value}.  Would you like to perform another operation? (Y/N)"

continue = gets.chomp

while continue == "Y" 

	question("What number do you want to use to perform an operation against the current value?")
	numNext = gets.chomp

	question("What operation would you like to perform? 1) Add 2) Subtract 3) Multiply 4) Divide")
	operator2 = gets.chomp

	if operator2.to_i==1
		value = value + numNext.to_i
	elsif operator2.to_i==2
		value = value - numNext.to_i
	elsif operator2.to_i==3
		value = value * numNext.to_i
	elsif operator2.to_i==4
		value = value / numNext.to_i
	end

	puts "Your value is #{value}.  Would you like to perform another operation? (Y/N)"
	continue = gets.chomp

end
