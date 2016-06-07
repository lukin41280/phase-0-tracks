class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
  	count.times { |times| puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(age)
  	age * 7
  end

  def high_five
  	5
  end
end

Gizmo = Puppy.new
Gizmo.fetch("ball")
Gizmo.speak(3)
Gizmo.roll_over
p Gizmo.dog_years(3)
p Gizmo.high_five