# code here!
class School

  def initialize(school_name)   #initialize method includes school_name and roster equal to empty hash
    @school_name = school_name #part 1
    @roster = {}    #empty hash
  end

  def roster    #getter method for roster/ part 2
    @roster
  end

  def add_student(name, grade) #part 3
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false   #conditional if passed will create empty array for each grade
      @roster[grade] = []
    end
    @roster[grade] << name    #pushes name to empty array based on which grade given as argument
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
