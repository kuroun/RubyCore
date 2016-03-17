module Student
  def gpa
    puts "here is gpa"
  end
end
module Person
  def info
    puts "here is basic info"
  end
end
class PhdStudent
  include Student, Person
  def thesis
    puts "this is thesis"
  end
  def gpa
    puts "override gpa by phd"
  end
end
class MasterStudent
  include Student, Person
  # def gpa
    # puts "gpa override by master"
  # end
end
phd = PhdStudent.new
phd.thesis
phd.gpa
phd.info
master = MasterStudent.new
master.gpa