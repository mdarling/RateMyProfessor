# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


departments = [
    {name: 'Chemical & Nuclear Engineering', shortname: 'CNE'},
    {name: 'Civil Engineering', shortname: 'CE'},
    {name: 'Computer Science', shortname: 'CS'},
    {name: 'Electrical & Computer Engineering', shortname: 'ECE'},
    {name: 'Mechanical Engineering', shortname: 'ME'},
  ]
department_refs = {}


professors = [
    {name: 'Chaouki T. Abdallah', department: 'ECE' },
    {name: 'Ganesh Balakrishnan', department: 'ECE' },
    {name: 'Steven R. J. Brueck', department: 'ECE' },
    {name: 'Vincent D. Calhoun', department: 'ECE' },
    {name: 'Thomas P. Caudell', department: 'ECE' },
    {name: 'Christos G. Christodoulou', department: 'ECE' },
    {name: 'Rafael Fierro', department: 'ECE' },
    {name: 'Charles B. Fleddermann', department: 'ECE' },
    {name: 'Daniel Feezell', department: 'ECE' },
    {name: 'Nasir Ghani', department: 'ECE' },
    {name: 'Mark A. Gilmore', department: 'ECE' },
    {name: 'Edward D. Graham, Jr.', department: 'ECE' },
    {name: 'Majeed M. Hayat', department: 'ECE' },
    {name: 'Gregory L. Heileman', department: 'ECE' },
    {name: 'Mani Hossein-Zadeh', department: 'ECE' },
    {name: 'Ravinder K. Jain', department: 'ECE' },
    {name: 'Sudharman K. Jayaweera', department: 'ECE' },
    {name: 'Ramiro Jordan', department: 'ECE' },
    {name: 'Sanjay Krishna', department: 'ECE' },
    {name: 'Olga Lavrova', department: 'ECE' },
    {name: 'Daryl O. Lee', department: 'ECE' },
    {name: 'Luke F. Lester', department: 'ECE' },
    {name: 'Meeko Oishi', department: 'ECE' },
    {name: 'Marek Osinski', department: 'ECE' },
    {name: 'Marios S. Pattichis', department: 'ECE' },
    {name: 'Fernando Perez-Gonzalez', department: 'ECE' },
    {name: 'James F. Plusquellic', department: 'ECE' },
    {name: 'L. Howard Pollard', department: 'ECE' },
    {name: 'Balu Santhanam', department: 'ECE' },
    {name: 'Edl Schamiloglu', department: 'ECE' },
    {name: 'Wei Wennie Shu', department: 'ECE' },
    {name: 'Payman Zarkesh-Ha', department: 'ECE' },

    {name: 'David Ackley', department: 'CS' },
    {name: 'Dorian Arnold', department: 'CS' },
    {name: 'Patrick Bridges', department: 'CS' },
    {name: 'Jed Crandall', department: 'CS' },
    {name: 'Stephanie Forrest', department: 'CS' },
    {name: 'Tom Hayes', department: 'CS' },
    {name: 'Deepak Kapur', department: 'CS' },
    {name: 'Patrick Kelley', department: 'CS' },
    {name: 'Joe Kniss', department: 'CS' },
    {name: 'Shuang (Sean) Luan', department: 'CS' },
    {name: 'George F. Luger', department: 'CS' },
    {name: 'Melanie Moses', department: 'CS' },
    {name: 'Gruia-Catalin Roman', department: 'CS' },
    {name: 'Jared Saia', department: 'CS' },
    {name: 'Darko Stefanovic', department: 'CS' },
    {name: 'Lydia Tapia', department: 'CS' },
    {name: 'Lance R. Williams', department: 'CS' },
  ]
professor_refs = {}


courses = [
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2012,
     professor: 'Gregory L. Heileman', department: 'ECE'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2011,
     professor: 'Gregory L. Heileman', department: 'ECE'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2003,
     professor: 'Gregory L. Heileman', department: 'ECE'
    },
  ]
course_refs = {}


# Populate the departments table, saving a reference to each department created
# so that it can be referred to later.
Department.delete_all
departments.each do |department|
  department_refs[department[:shortname]] = Department.create department
end


# Populate the professors table, saving a reference to each professor created
# so that it can be referred to later.
Professor.delete_all
professors.each do |professor|
  department = department_refs[professor[:department]]
  professor_tmp = professor
  professor_tmp.delete :department
  professor_refs[professor[:name]] = department.professors.create professor_tmp
end


# Populate the courses table, saving a reference to each course created
# so that it can be referred to later.
Course.delete_all
courses.each do |course|
  department = department_refs[course[:department]]
  professor = professor_refs[course[:professor]]
  course_tmp = course
  course_tmp.delete :department
  course_tmp.delete :professor
  course_refs[course[:code]] = professor.courses.create course_tmp
end

