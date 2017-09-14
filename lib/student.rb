class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |attribute, value|
        self.send("#{attribute}=", value)
  end
  @@all << self
# assign the newly created student attributes and values in accordance with the
# key/value pairs of the hash. Use the `#send` method
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_hash|
      Student.new(student_hash)
    end
    # iterate over the array of hashes and create a new individual student using each hash
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
  self
  end

  def self.all
    @@all
  end
end
