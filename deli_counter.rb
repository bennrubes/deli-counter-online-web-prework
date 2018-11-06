require "pry"
class Deli
@@dispenser = 1

  def line(deli)
    if deli == []
    puts "The line is currently empty."
    else
      line_with_people = deli.each_with_index.map do |name, position|
        "#{position + 1}. #{name}"
      end
      puts "The line is currently: #{line_with_people.join(" ")}"
    end
  end
  
  def take_a_number(deli)
      deli.push(@@dispenser)
      puts "Welcome, your ticket number is #{@@dispenser} and you are #{deli.count} in line."
      @@dispenser += 1
  end
  
  def now_serving(deli)
   deli == [] ? (puts "There is nobody waiting to be served!") : (puts "Currently serving #{deli.shift}.")
  end
end  

new_deli = Deli.new
new_deli.take_a_number([])
new_deli.take_a_number([1])
binding.pry