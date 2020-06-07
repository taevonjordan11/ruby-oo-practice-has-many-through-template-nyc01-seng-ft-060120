class Teacher
  @@all = []
    attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def students
    teaching = Classroom.all.select do |students|
      students.teacher == self
    end

    teaching.map do |student|
      student.student == self
    end

  end

  def self.all
    @@all
  end
end
