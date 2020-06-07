#class for Model1 goes here
#Feel free to change the name of the class
class Student
  @@all = []
  attr_reader :name, :grade, :gpa


  def initialize(name, grade, gpa=nil)
    @name = name
    @grade = grade
    @gpa = gpa
    @@all << self
  end

  def teachers
    class_students = Classroom.all.select do |teacher|
      teacher.student == self
    end

    class_students.map do |student|
      student.teacher
    end
  end

  def self.all
    @@all
  end

  def what_grade
   "My name is, #{self.name}. I am in the #{self.grade} grade"
  end

  def honors
    if self.gpa >= 3.5
      "Has Honors"
    else
      "Does not have honors"
    end
  end

end
