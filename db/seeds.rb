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
     professor: 'Gregory L. Heileman', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2012'
    },
  ]
course_refs = {}


evaluations = [
    {name:       'Beginning of Course Questionnaire',
     course:     'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING'
    },
    {name:       'Mid-course Evaluation',
     course:     'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-MID'
    },
    {name:       'End of Semester Evaluation',
     course:     'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-END'
    },
  ]
evaluation_refs = {}


questions = [
    {content:    'Do you have any experience developing web applications?',
     evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1'
    },
    {content:    'What do you hope to get out of this class?',
     evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2'
    },


    {content:    'How do you think the class is going?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1'
    },
    {content:    'How would you rate the pace of the course?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2'
    },
    {content:    'Would you rather have a group project or more homeworks?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3'
    },


    {content:    'Overall, how would you rate this course?',
     evaluation: 'ECE-595-04-FALL-2012-END',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1'
    },
    {content:    'Have you achieved your goals for the class?',
     evaluation: 'ECE-595-04-FALL-2012-END',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2'
    },
  ]
question_refs = {}


answers = [
    # BEGINNING
    # Q1
    {content:    'Yes',
     question:   'ECE-595-04-FALL-2012-BEGINNING-Q1',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A1'
    },
    {content:    'No',
     question:   'ECE-595-04-FALL-2012-BEGINNING-Q1',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A2'
    },

    # Q2
    {content:    'General background in developing web applications',
     question:   'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A1'
    },
    {content:    'Some hands-on experience developing web applications',
     question:   'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A2'
    },
    {content:    'Die-hard experience developing complex web applications',
     question:   'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A3'
    },


    # Mid-semester
    # Q1
    {content:    'Great',
     question:   'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A1'
    },
    {content:    'Pretty good',
     question:   'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A2'
    },
    {content:    'Not so good',
     question:   'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A3'
    },
    {content:    'Horribly',
     question:   'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A4'
    },

    # Q2
    {content:    'Too fast',
     question:   'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A1'
    },
    {content:    'About right',
     question:   'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A2'
    },
    {content:    'Too slow',
     question:   'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A3'
    },

    # Q3
    {content:    'Group project',
     question:   'ECE-595-04-FALL-2012-MID-Q3',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3-A1'
    },
    {content:    'More homework',
     question:   'ECE-595-04-FALL-2012-MID-Q3',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3-A2'
    },


    # End of semester
    # Q1
    {content:    'Excellent',
     question:   'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A1'
    },
    {content:    'Good',
     question:   'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A2'
    },
    {content:    'Average',
     question:   'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A3'
    },
    {content:    'Poor',
     question:   'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A4'
    },
    {content:    'Terrible',
     question:   'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A5'
    },

    # Q2
    {content:    'Yes',
     question:   'ECE-595-04-FALL-2012-END-Q2',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2-A1'
    },
    {content:    'No',
     question:   'ECE-595-04-FALL-2012-END-Q2',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2-A2'
    },
  ]
answer_refs = {}


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
  professor.delete :department
  professor_refs[professor[:name]] = department.professors.create professor
end


# Populate the courses table, saving a reference to each course created
# so that it can be referred to later.
Course.delete_all
courses.each do |course|
  department = department_refs[course[:department]]
  professor  = professor_refs[course[:professor]]
  course_key = course[:unique_key]
  course.delete :department
  course.delete :professor
  course.delete :unique_key
  course_refs[course_key] = professor.courses.create course
end


# Populate the evaluations table, saving a reference to each evaluation created
# so that it can be referred to later.
Evaluation.delete_all
evaluations.each do |evaluation|
  course = course_refs[evaluation[:course]]
  evaluation_key = evaluation[:unique_key]
  evaluation.delete :course
  evaluation.delete :unique_key
  evaluation_refs[evaluation_key] = course.evaluations.create evaluation
end


# Populate the questions table, saving a reference to each question created
# so that it can be referred to later.
Question.delete_all
questions.each do |question|
  evaluation = evaluation_refs[question[:evaluation]]
  question_key = question[:unique_key]
  question.delete :evaluation
  question.delete :unique_key
  question_refs[question_key] = evaluation.questions.create question
end


# Populate the answers table, saving a reference to each answer created
# so that it can be referred to later.
Answer.delete_all
answers.each do |answer|
  question = question_refs[answer[:question]]
  answer_key = question[:unique_key]
  answer.delete :question
  answer.delete :unique_key
  answer_refs[answer_key] = question.answers.create answer
end
