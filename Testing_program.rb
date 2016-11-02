numbers = {
  :"1" => "one",
  :"2" => "two",
  :"3" => "three",
  :"4" => "four",
  :"5" => "five",
  :"6" => "six",
  :"brick" => "wall"
}

other_numbers = {

}


for num in numbers
  until numbers == {
    :"brick" => "wall"
  }

  puts "choose a number between 1-6"
  number = gets.chomp.to_i
  break if number == 1
  random_choice = 1 + rand(6)

  if dead = numbers[:"#{random_choice}"]
    puts "#{dead} is gone"
  else
    puts "lucky"
  end

  other_numbers[:"#{random_choice}"] = numbers.delete(:"#{random_choice}")


end

puts "you win"
break

end

