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

  puts "Enter an integer to decide times of iteration"

  size_input = check_input.to_i
  array = Array(1..array_input).shuffle!

  beginning_time = Time.now
  size_input.times do
    target = rand 1..array_input
    SearchAlgorithms.linearSearch(array, target)
  end
  end_time = Time.now

  puts "time elapsed #{(end_time - beginning_time) * 1000} milliseconds by using linear search"

  beginning_time = Time.now
  array.sort!
  size_input.times do
    target = rand 1..array_input
    SearchAlgorithms.binarySearch(array, target)
  end
  end_time = Time.now

  puts "time elapsed #{(end_time - beginning_time) * 1000} milliseconds by using binary search"
end
