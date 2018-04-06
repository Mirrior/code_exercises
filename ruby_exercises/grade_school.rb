class GradeSchool
  grades = (1..12).to_a

  grades.each do |grade|
    define_method("grade_#{grade}") do |arg|
      puts ": #{genre}"
      puts arg
      puts genre.object_id
    end
  end

# Challenge from
# http://exercism.io/exercises/ruby/grade-school/readme