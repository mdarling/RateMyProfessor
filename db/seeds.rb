# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)


departments = [
    {name: 'Chemical & Nuclear Engineering', shortname: 'CNE'},
    {name: 'Civil Engineering', shortname: 'CE'},
    {name: 'Computer Science', shortname: 'CS'},
    {name: 'Electrical & Computer Engineering', shortname: 'ECE'},
    {name: 'Mechanical Engineering', shortname: 'ME'},
  ]
department_refs = {}


professors = [
    {name: 'Abdallah', first_name: 'Chaouki', department: 'ECE' },
    {name: 'Balakrishnan', first_name: 'Ganesh', department: 'ECE' },
    {name: 'Brueck', first_name: 'Steven', department: 'ECE' },
    {name: 'Calhoun', first_name: 'Vincent', department: 'ECE' },
    {name: 'Caudell', first_name: 'Thomas', department: 'ECE' },
    {name: 'Christodoulou', first_name: 'Christos', department: 'ECE' },
    {name: 'Fierro', first_name: 'Rafael', department: 'ECE' },
    {name: 'Fleddermann', first_name: 'Charles', department: 'ECE' },
    {name: 'Feezell', first_name: 'Daniel', department: 'ECE' },
    {name: 'Ghani', first_name: 'Nasir', department: 'ECE' },
    {name: 'Gilmore', first_name: 'Mark', department: 'ECE' },
    {name: 'Graham, Jr.', first_name: 'Edward', department: 'ECE' },
    {name: 'Hayat', first_name: 'Majeed', department: 'ECE' },
    {name: 'Heileman', first_name: 'Gregory', department: 'ECE' },
    {name: 'Hossein-Zadeh', first_name: 'Mani', department: 'ECE' },
    {name: 'Jain', first_name: 'Ravinder', department: 'ECE' },
    {name: 'Jayaweera', first_name: 'Sudharman', department: 'ECE' },
    {name: 'Jordan', first_name: 'Ramiro', department: 'ECE' },
    {name: 'Krishna', first_name: 'Sanjay', department: 'ECE' },
    {name: 'Lavrova', first_name: 'Olga', department: 'ECE' },
    {name: 'Lee', first_name: 'Daryl', department: 'ECE' },
    {name: 'Lester', first_name: 'Luke', department: 'ECE' },
    {name: 'Oishi', first_name: 'Meeko', department: 'ECE' },
    {name: 'Osinski', first_name: 'Marek', department: 'ECE' },
    {name: 'Pattichis', first_name: 'Marios', department: 'ECE' },
    {name: 'Perez-Gonzalez', first_name: 'Fernando', department: 'ECE' },
    {name: 'Plusquellic', first_name: 'James', department: 'ECE' },
    {name: 'Pollard', first_name: 'L. Howard', department: 'ECE' },
    {name: 'Santhanam', first_name: 'Balu', department: 'ECE' },
    {name: 'Schamiloglu', first_name: 'Edl', department: 'ECE' },
    {name: 'Wennie Shu', first_name: 'Wei', department: 'ECE' },
    {name: 'Zarkesh-Ha', first_name: 'Payman', department: 'ECE' },

    {name: 'Ackley', first_name: 'David', department: 'CS' },
    {name: 'Arnold', first_name: 'Dorian', department: 'CS' },
    {name: 'Bridges', first_name: 'Patrick', department: 'CS' },
    {name: 'Crandall', first_name: 'Jed', department: 'CS' },
    {name: 'Forrest', first_name: 'Stephanie', department: 'CS' },
    {name: 'Hayes', first_name: 'Tom', department: 'CS' },
    {name: 'Kapur', first_name: 'Deepak', department: 'CS' },
    {name: 'Kelley', first_name: 'Patrick', department: 'CS' },
    {name: 'Kniss', first_name: 'Joe', department: 'CS' },
    {name: 'Luan', first_name: 'Shuang (Sean)', department: 'CS' },
    {name: 'Luger', first_name: 'George', department: 'CS' },
    {name: 'Moses', first_name: 'Melanie', department: 'CS' },
    {name: 'Roman', first_name: 'Gruia-Catalin', department: 'CS' },
    {name: 'Saia', first_name: 'Jared', department: 'CS' },
    {name: 'Stefanovic', first_name: 'Darko', department: 'CS' },
    {name: 'Tapia', first_name: 'Lydia', department: 'CS' },
    {name: 'Williams', first_name: 'Lance', department: 'CS' },

    {name: 'Ebrahimi', first_name: 'Nader', department: 'ME' },
    {name: 'Greenlee', first_name: 'Robert H.', department: 'ME' },
    {name: 'Hall', first_name: 'Chris', department: 'ME' },
    {name: 'Heinrich', first_name: 'Juan C.', department: 'ME' },
    {name: 'Khraishi', first_name: 'Tariq', department: 'ME' },
    {name: 'Leseman', first_name: 'Zayd', department: 'ME' },
    {name: 'Lumia', first_name: 'Ron', department: 'ME' },
    {name: 'Mammoli', first_name: 'Andrea', department: 'ME' },
    {name: 'Poroseva', first_name: 'Svetlana', department: 'ME' },
    {name: 'Razani', first_name: 'Arsalan', department: 'ME' },
    {name: 'Russell', first_name: 'John', department: 'ME' },
    {name: 'Shen', first_name: 'Yu-Lin', department: 'ME' },
    {name: 'Sorrentino', first_name: 'Francesco', department: 'ME' },
    {name: 'Starr', first_name: 'Gregory P.', department: 'ME' },
    {name: 'Truman', first_name: 'C. Randall', department: 'ME' },
    {name: 'Vorobieff', first_name: 'Peter', department: 'ME' },
    {name: 'Wood', first_name: 'John E.', department: 'ME' },
    {name: 'Graham', first_name: 'Alan', department: 'ME' },
    {name: 'El-Kady', first_name: 'Ihab', department: 'ME' },
    {name: 'Pleil', first_name: 'Matthias', department: 'ME' },
    {name: 'Baker', first_name: 'William E.', department: 'ME' },
    {name: 'Leith', first_name: 'James', department: 'ME' },
    {name: 'Richards', first_name: 'Charles G.', department: 'ME' },
    {name: 'Schreyer', first_name: 'Howard L.', department: 'ME' },
    {name: 'Wildin', first_name: 'Maurice W.', department: 'ME' },

    {name: 'Stormont', first_name: 'John C.', department: 'CE' },
    {name: 'Bogus', first_name: 'Susan', department: 'CE' },
    {name: 'Coonrod', first_name: 'Julie E.A.', department: 'CE' },
    {name: 'Gerstle', first_name: 'Walter', department: 'CE' },
    {name: 'Gould', first_name: 'Gregory', department: 'CE' },
    {name: 'Hall', first_name: 'Jerome W.', department: 'CE' },
    {name: 'Howe', first_name: 'Kerry J.', department: 'CE' },
    {name: 'Maji', first_name: 'Arup K.', department: 'CE' },
    {name: 'Ng', first_name: 'Percy', department: 'CE' },
    {name: 'Ross', first_name: 'Timothy J.', department: 'CE' },
    {name: 'Rounds', first_name: 'Jerald L.', department: 'CE' },
    {name: 'Russell', first_name: 'Mark', department: 'CE' },
    {name: 'Schuler', first_name: 'Andrew', department: 'CE' },
    {name: 'Stone', first_name: 'Mark', department: 'CE' },
    {name: 'Taha', first_name: 'Mahmoud Reda', department: 'CE' },
    {name: 'Tarefder', first_name: 'Rafiqul A.', department: 'CE' },
    {name: 'Thomson', first_name: 'Bruce M.', department: 'CE' },
    {name: 'Valentin', first_name: 'Vanessa', department: 'CE' },
    {name: 'Zhang', first_name: 'Guohui', department: 'CE' }, 
    
    {name: 'Arthur', first_name: 'Ed', department: 'CNE' },
    {name: 'Atanassov', first_name: 'Plamen', department: 'CNE' },
    {name: 'Blandford', first_name: 'Edward D.', department: 'CNE' },
    {name: 'Brinker', first_name: 'C. Jeffrey', department: 'CNE' },
    {name: 'Busch', first_name: 'Robert', department: 'CNE' },
    {name: 'Canavan', first_name: 'Heather', department: 'CNE' },
    {name: 'Carnes', first_name: 'Eric', department: 'CNE' },
    {name: 'Cecchi', first_name: 'Joseph', department: 'CNE' },
    {name: 'Chi', first_name: 'Eva', department: 'CNE' },
    {name: 'Cooper', first_name: 'Gary', department: 'CNE' },
    {name: 'Datye', first_name: 'Abhaya', department: 'CNE' },
    {name: 'Oliveira', first_name: 'Cassiano de', department: 'CNE' },
    {name: 'Dirk', first_name: 'Elizabeth', department: 'CNE' },
    {name: 'Edwards', first_name: 'Jeremy', department: 'CNE' },
    {name: 'El-Genk', first_name: 'Mohamed', department: 'CNE' },
    {name: 'Freyer', first_name: 'James', department: 'CNE' },
    {name: 'Fulghum', first_name: 'Julia', department: 'CNE' },
    {name: 'Graves', first_name: 'Steve', department: 'CNE' },
    {name: 'Han', first_name: 'Sang Eon', department: 'CNE' },
    {name: 'Hecht', first_name: 'Adam', department: 'CNE' },
    {name: 'Heintz', first_name: 'Phillip H.', department: 'CNE' },
    {name: 'Loehman', first_name: 'Ronald', department: 'CNE' },
    {name: 'Lopez', first_name: 'Gabriel', department: 'CNE' },
    {name: 'McDaniel', first_name: 'Patrick', department: 'CNE' },
    {name: 'Petsev', first_name: 'Dimiter', department: 'CNE' },
    {name: 'Prinja', first_name: 'Anil', department: 'CNE' },
    {name: 'Roderick', first_name: 'Norman', department: 'CNE' },
    {name: 'Schunk', first_name: 'Randall', department: 'CNE' },
    {name: 'Shreve', first_name: 'Andrew', department: 'CNE' },
    {name: 'Sibbett', first_name: 'Scott', department: 'CNE' },
    {name: 'Tournier', first_name: 'Jean-Michel', department: 'CNE' },
    {name: 'Ward', first_name: 'Tim L.', department: 'CNE' },
    {name: 'Whitten', first_name: 'David', department: 'CNE' },
    {name: 'Xie', first_name: 'Yixiang', department: 'CNE' },
  ]
professor_refs = {}


courses = [
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2012,
     professor: 'Heileman', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2012'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2011,
     professor: 'Heileman', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2011'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2003,
     professor: 'Heileman', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2003'
    },
  ]
course_refs = {}


evaluations = [
    {name: 'Beginning of Course Questionnaire',
     course: 'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING'
    },
    {name: 'Mid-course Evaluation',
     course: 'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-MID'
    },
    {name: 'End of Semester Evaluation',
     course: 'ECE-595-04-FALL-2012',
     unique_key: 'ECE-595-04-FALL-2012-END'
    },
  ]
evaluation_refs = {}


questions = [
    {content: 'Do you have any experience developing web applications?',
     evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1'
    },
    {content: 'What do you hope to get out of this class?',
     evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2'
    },


    {content: 'How do you think the class is going?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1'
    },
    {content: 'How would you rate the pace of the course?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2'
    },
    {content: 'Would you rather have a group project or more homeworks?',
     evaluation: 'ECE-595-04-FALL-2012-MID',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3'
    },


    {content: 'Overall, how would you rate this course?',
     evaluation: 'ECE-595-04-FALL-2012-END',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1'
    },
    {content: 'Have you achieved your goals for the class?',
     evaluation: 'ECE-595-04-FALL-2012-END',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2'
    },
  ]
question_refs = {}


answers = [
    # BEGINNING
    # Q1
    {content: 'Yes',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q1',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A1'
    },
    {content: 'No',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q1',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A2'
    },

    # Q2
    {content: 'General background in developing web applications',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A1'
    },
    {content: 'Some hands-on experience developing web applications',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A2'
    },
    {content: 'Die-hard experience developing complex web applications',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A3'
    },


    # Mid-semester
    # Q1
    {content: 'Great',
     question: 'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A1'
    },
    {content: 'Pretty good',
     question: 'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A2'
    },
    {content: 'Not so good',
     question: 'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A3'
    },
    {content: 'Horribly',
     question: 'ECE-595-04-FALL-2012-MID-Q1',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q1-A4'
    },

    # Q2
    {content: 'Too fast',
     question: 'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A1'
    },
    {content: 'About right',
     question: 'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A2'
    },
    {content: 'Too slow',
     question: 'ECE-595-04-FALL-2012-MID-Q2',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q2-A3'
    },

    # Q3
    {content: 'Group project',
     question: 'ECE-595-04-FALL-2012-MID-Q3',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3-A1'
    },
    {content: 'More homework',
     question: 'ECE-595-04-FALL-2012-MID-Q3',
     unique_key: 'ECE-595-04-FALL-2012-MID-Q3-A2'
    },


    # End of semester
    # Q1
    {content: 'Excellent',
     question: 'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A1'
    },
    {content: 'Good',
     question: 'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A2'
    },
    {content: 'Average',
     question: 'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A3'
    },
    {content: 'Poor',
     question: 'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A4'
    },
    {content: 'Terrible',
     question: 'ECE-595-04-FALL-2012-END-Q1',
     unique_key: 'ECE-595-04-FALL-2012-END-Q1-A5'
    },

    # Q2
    {content: 'Yes',
     question: 'ECE-595-04-FALL-2012-END-Q2',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2-A1'
    },
    {content: 'No',
     question: 'ECE-595-04-FALL-2012-END-Q2',
     unique_key: 'ECE-595-04-FALL-2012-END-Q2-A2'
    },
  ]
answer_refs = {}


response_sets = [
    {evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-RS1'
    },
    {evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-RS2'
    },
    {evaluation: 'ECE-595-04-FALL-2012-BEGINNING',
     unique_key: 'ECE-595-04-FALL-2012-BEGINNING-RS3'
    },
  ]
response_set_refs = {}


responses = [
    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS1',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q1',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A1'
    },
    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS1',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A1'
    },

    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS2',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q1',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A2'
    },
    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS2',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A2'
    },

    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS3',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q1',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q1-A2'
    },
    {response_set: 'ECE-595-04-FALL-2012-BEGINNING-RS3',
     question: 'ECE-595-04-FALL-2012-BEGINNING-Q2',
     answer: 'ECE-595-04-FALL-2012-BEGINNING-Q2-A3'
    },
  ]


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
  professor = professor_refs[course[:professor]]
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
  answer_key = answer[:unique_key]
  answer.delete :question
  answer.delete :unique_key
  answer_refs[answer_key] = question.answers.create answer
end


# Populate the response_sets table, saving a reference to each response set created
# so that it can be referred to later.
ResponseSet.delete_all
response_sets.each do |response_set|
  evaluation = evaluation_refs[response_set[:evaluation]]
  response_set_key = response_set[:unique_key]
  response_set.delete :evaluation
  response_set.delete :unique_key
  response_set_refs[response_set_key] = evaluation.response_sets.create response_set
end


# Populate the responses table, saving a reference to each response created
# so that it can be referred to later.
Response.delete_all
responses.each do |response|
  response_set = response_set_refs[response[:response_set]]
  question = question_refs[response[:question]]
  answer = answer_refs[response[:answer]]
  response.delete :response_set
  response.delete :question
  response.delete :answer
  response[:question_id] = question.id
  response[:answer_id] = answer.id
  response_set.responses.create response
end



