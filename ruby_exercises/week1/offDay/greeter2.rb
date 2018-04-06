def greetings
  puts "Please enter name:"
  name = gets.chomp.to_s
  case name
    when name.include?("Rick" || "Daryl" || "Michome")
      puts "Greetings #{name}"
    else
      puts "#{name} go out and find supplies"
    end
end

greetings