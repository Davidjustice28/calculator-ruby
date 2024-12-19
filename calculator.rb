def perform_arithmetic(action, a, b)
  case action
  when 'add'
    a + b
  when 'subtract'
    a - b
  when 'multiply'
    a * b
  when 'divide'
    a / b
  else
    nil
  end
end

def run_program
  has_problem = true

  while has_problem
    puts "What action do you want to take? (Options: add, substract, multiply, or divide)"
    action = gets.chomp().downcase()

    puts "What is the first number?"
    a = gets.chomp()

    puts "What is the second number?"
    b = gets.chomp()

    supported_actions = Array['add', 'subtract', 'multiply', 'divide']

    if supported_actions.include? action
      sum = perform_arithmetic(action, a.to_f, b.to_f)

      if sum == nil
        puts "Sorry I couldn't figure out what you wanted. Please try again!"
      else
        puts ("Answer: #{sum}")
      end

    else 
      puts ("Sorry this program doesn't support \"" + action + "\" as an action")
    end
    
    next_action_determined = false

    while !next_action_determined

      puts "Do you have another question? (yes or no)"

      answer = gets.chomp().downcase()


      if answer == 'no'
        puts "Okay Goodbye" 
        puts "Program terminated"
        next_action_determined = true
        has_problem = false
      elsif answer != 'yes'
        puts "Sorry, I couldn't understand your answer."
      else 
        next_action_determined = true
      end
    end
  end
end

puts 'Program initiated'
run_program