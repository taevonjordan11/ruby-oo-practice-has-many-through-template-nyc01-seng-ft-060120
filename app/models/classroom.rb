
# Will be the join class that holds the references
#im not fully understdaing why my join model isnt tracking my student and teacher models


class Classroom
  @@all = []
  attr_reader :student, :teacher

  def initialize(student, teacher)
    @student = student
    @teacher = teacher
    @@all <<  self
  end

  def self.all
      @@all
  end



end
