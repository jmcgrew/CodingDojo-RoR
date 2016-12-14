class Project
  attr_accessor :name, :pitch
  def initialize(name, pitch)
    @name = name
    @pitch = pitch
  end
  def elevator_pitch
    puts "Get this, it's a #{name}. #{pitch}"
  end

end
project1 = Project.new("\nReverse Lottery", "Buy in is $10,000. Almost everyone gets their 10K plus a little more. One person? Nothin'.\n\n")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
