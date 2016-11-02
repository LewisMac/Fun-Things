fellowship = {
  :"1" => "Gandalf the Gray",
  :"2" => "Legolas Greenleaf",
  :"3" => "Gimli the Dwarf",
  :"4" => "Aragorn, son of Arathorn, Heir to the throne of Gondor",
  :"5" => "Boromir son of Denethor",
  :"6" => "Frodo of the Shire",
  :"7" => "Samwise Gamgee",
  :"8" => "Meriadoc Brandybuck",
  :"9" => "Peregrin Took",
  :"brick" => "wall"
}

dead_fellowship = {

}

for member in fellowship
  until fellowship == {
    :"brick" => "wall"
  }
  puts "choose a number between 1-6"
  number = gets.chomp.to_i
  break if number == 1 + rand(6)

  random_choice = 1 + rand(9)

  if dead = fellowship[:"#{random_choice}"]
    puts "#{dead} is gone"
  else
    puts "lucky"
  end
  dead_fellowship[:"#{random_choice}"] = fellowship.delete(:"#{random_choice}")
end
puts "you win!"
break
end









  
  
  

















# puts fellowship

# puts dead_fellowship



#when number != 1 + rand(6)
#  fellowship_new = fellowship
#
#push between hashes to get dead fellowship
#
