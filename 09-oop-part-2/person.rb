class Person

  attr_reader :year_of_birth
  #attr_writer :job_title
  # writer only to make things only writeable and not readable
  attr_writer :password, :deep_dark_secret
  # this is a method that can do read and write in the same time
  attr_accessor :first_name, :last_name, :job_title


  def initialize(first_name, last_name, year_of_birth)
    @first_name = first_name.capitalize
    @last_name  = last_name.capitalize
    @job_title = "baby"
    @year_of_birth = year_of_birth
  end

  def full_name
    return "#{first_name} #{@last_name}"
  end

  def greetings
    "Hi, my name is #{full_name}"
  end

  def daydream
    @deep_dark_secret = "I want PIZZA"

  end
end

class Professor < Person
  attr_accessor :field_of_study
  def initialize(first_name, last_name, year_of_birth, field_of_study)
    super(first_name, last_name, year_of_birth)
    @field_of_study = field_of_study
  end

  def full_name
    "Prof #{ super }"
  end

  def teach(students)
    students.each {|student| student.learn}
  end

end

class Student < Person
  attr_reader :knowledge_level
  def initialize(first_name, last_name, year_of_birth)
    super(first_name, last_name, year_of_birth)
    @knowledge_level = 0
  end

  def learn
    @knowledge_level += 1
  end

end
