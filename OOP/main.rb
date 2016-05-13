#because of ruby is dynamic type, program to interface is already maintained
module Person
  def say
    "I am a normal person"
  end
end
class Student
  include Person
  def say
    "I am a student"
  end
end
class Teacher
  include Person
  def say
    "I am a teacher"
  end
end
john = Student.new
peter = Teacher.new
people =[john,peter]
people.each do |p|
  puts p.say
end
arr = [1,"hello", 2.67, people]
puts arr.inspect
