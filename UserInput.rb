$LOAD_PATH << '.'
require "SearchAlgorithms"

def check_input
  begin
    input = gets.chomp
    number = Integer(input)
  rescue
    puts "please enter an integer"
    check_input
  else
    if number.to_s != input
      puts "please enter an integer"
      check_input
    end
  end
  return number
end

class UserInput

  puts "Welcome to demostration of searching algorithms"
  puts "Enter an integer to decide the array size"

  array_input = check_input.to_i

  puts "Enter an integer to decide loop number"

  size_input = check_input.to_i

  sum = 0

  size_input.times do
    array = Array(1..array_input)
    target = rand 1..array_input

    beginning_time = Time.now
    SearchAlgorithms.linearSearch(array, target)
    end_time = Time.now

    sum += (end_time - beginning_time) * 1000
  end

  puts "time elapsed #{sum} milliseconds by using linear search"

  sum = 0

  size_input.times do
    array = Array(1..array_input)
    target = rand 1..array_input

    beginning_time = Time.now
    SearchAlgorithms.binarySearch(array, target)
    end_time = Time.now

    sum += (end_time - beginning_time) * 1000
  end

  puts "time elapsed #{sum} milliseconds by using binary search"
end
