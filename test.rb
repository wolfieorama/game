list = [ 'Mom' , 'Dad' , 'Brother' , 'Bromas', 'Sister' ]
puts ("Enter the character you would like to find");
character = gets.chomp
comp = []

list.each do |e|
  if e.include?(character)
    puts "Character #{character} found in the word #{e}"
    comp.push(e)
    p e[0]
  end
end

p comp
