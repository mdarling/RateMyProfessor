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
    {name: 'Abdallah, Chaouki', department: 'ECE' },
    {name: 'Balakrishnan, Ganesh', department: 'ECE' },
    {name: 'Brueck, Steven', department: 'ECE' },
    {name: 'Calhoun, Vincent', department: 'ECE' },
    {name: 'Caudell, Thomas', department: 'ECE' },
    {name: 'Christodoulou, Christos', department: 'ECE' },
    {name: 'Fierro, Rafael', department: 'ECE' },
    {name: 'Fleddermann, Charles', department: 'ECE' },
    {name: 'Feezell, Daniel', department: 'ECE' },
    {name: 'Ghani, Nasir', department: 'ECE' },
    {name: 'Gilmore, Mark', department: 'ECE' },
    {name: 'Graham, Jr., Edward', department: 'ECE' },
    {name: 'Hayat, Majeed', department: 'ECE' },
    {name: 'Heileman, Gregory', department: 'ECE' },
    {name: 'Hossein-Zadeh, Mani', department: 'ECE' },
    {name: 'Jain, Ravinder', department: 'ECE' },
    {name: 'Jayaweera, Sudharman', department: 'ECE' },
    {name: 'Jordan, Ramiro', department: 'ECE' },
    {name: 'Krishna, Sanjay', department: 'ECE' },
    {name: 'Lavrova, Olga', department: 'ECE' },
    {name: 'Lee, Daryl', department: 'ECE' },
    {name: 'Lester, Luke', department: 'ECE' },
    {name: 'Oishi, Meeko', department: 'ECE' },
    {name: 'Osinski, Marek', department: 'ECE' },
    {name: 'Pattichis, Marios', department: 'ECE' },
    {name: 'Perez-Gonzalez, Fernando', department: 'ECE' },
    {name: 'Plusquellic, James', department: 'ECE' },
    {name: 'Pollard, L. Howard', department: 'ECE' },
    {name: 'Santhanam, Balu', department: 'ECE' },
    {name: 'Schamiloglu, Edl', department: 'ECE' },
    {name: 'Wennie Shu, Wei', department: 'ECE' },
    {name: 'Zarkesh-Ha, Payman', department: 'ECE' },

    {name: 'Ackley, David', department: 'CS' },
    {name: 'Arnold, Dorian', department: 'CS' },
    {name: 'Bridges, Patrick', department: 'CS' },
    {name: 'Crandall, Jed', department: 'CS' },
    {name: 'Forrest, Stephanie', department: 'CS' },
    {name: 'Hayes, Tom', department: 'CS' },
    {name: 'Kapur, Deepak', department: 'CS' },
    {name: 'Kelley, Patrick', department: 'CS' },
    {name: 'Kniss, Joe', department: 'CS' },
    {name: 'Luan, Shuang (Sean)', department: 'CS' },
    {name: 'Luger, George', department: 'CS' },
    {name: 'Moses, Melanie', department: 'CS' },
    {name: 'Roman, Gruia-Catalin', department: 'CS' },
    {name: 'Saia, Jared', department: 'CS' },
    {name: 'Stefanovic, Darko', department: 'CS' },
    {name: 'Tapia, Lydia', department: 'CS' },
    {name: 'Williams, Lance', department: 'CS' },

       {name: 'Nader Ebrahimi', department: 'ME' },
    {name: 'Robert H. Greenlee', department: 'ME' },
    {name: 'Chris Hall', department: 'ME' },
{name: 'Juan C. Heinrich', department: 'ME' },
{name: 'Tariq Khraishi', department: 'ME' },
{name: 'Zayd Leseman', department: 'ME' },
{name: 'Ron Lumia', department: 'ME' },
{name: 'Andrea Mammoli', department: 'ME' },
{name: 'Svetlana Poroseva', department: 'ME' },
{name: 'Arsalan Razani', department: 'ME' },
{name: 'John Russell', department: 'ME' },
{name: 'Yu-Lin Shen', department: 'ME' },
{name: 'Francesco Sorrentino', department: 'ME' },
{name: 'Gregory P. Starr', department: 'ME' },
{name: 'C. Randall Truman', department: 'ME' },
{name: 'Peter Vorobieff', department: 'ME' },
{name: 'John E. Wood', department: 'ME' },
{name: 'Alan Graham', department: 'ME' },
{name: 'Ihab El-Kady', department: 'ME' },
{name: 'Matthias Pleil', department: 'ME' },
{name: 'William E. Baker', department: 'ME' },
{name: 'James Leith', department: 'ME' },
{name: 'Charles G. Richards', department: 'ME' },
{name: 'Howard L. Schreyer', department: 'ME' },
{name: 'Maurice W. Wildin', department: 'ME' },

{name: 'John C. Stormont', department: 'CE' },
{name: 'Susan Bogus', department: 'CE' },
{name: 'Julie E.A. Coonrod', department: 'CE' },
{name: 'Walter Gerstle', department: 'CE' },
{name: 'Gregory Gould', department: 'CE' },
{name: 'Jerome W. Hall', department: 'CE' },
{name: 'Kerry J. Howe', department: 'CE' },
{name: 'Arup K. Maji', department: 'CE' },
{name: 'Percy Ng', department: 'CE' },
{name: 'Timothy J. Ross', department: 'CE' },
{name: 'Jerald L. Rounds', department: 'CE' },
{name: 'Mark Russell', department: 'CE' },
{name: 'Andrew Schuler', department: 'CE' },
{name: 'Mark Stone', department: 'CE' },
{name: 'Mahmoud Reda Taha', department: 'CE' },
{name: 'Rafiqul A. Tarefder', department: 'CE' },
{name: 'Bruce M. Thomson', department: 'CE' },
{name: 'Vanessa Valentin', department: 'CE' },
{name: 'Guohui Zhang', department: 'CE' }, 
 
{name: 'Ed Arthur', department: 'CNE' },
{name: 'Plamen Atanassov', department: 'CNE' },
{name: 'Edward D. Blandford', department: 'CNE' },
{name: 'C. Jeffrey Brinker', department: 'CNE' },
{name: 'Robert Busch', department: 'CNE' },
{name: 'Heather Canavan', department: 'CNE' },
{name: 'Eric Carnes', department: 'CNE' },
{name: 'Joseph Cecchi', department: 'CNE' },
{name: 'Eva Chi', department: 'CNE' },
{name: 'Gary Cooper', department: 'CNE' },
{name: 'Abhaya Datye', department: 'CNE' },
{name: 'Cassiano de Oliveira', department: 'CNE' },
{name: 'Elizabeth Dirk', department: 'CNE' },
{name: 'Jeremy Edwards', department: 'CNE' },
{name: 'Mohamed El-Genk', department: 'CNE' },
{name: 'James Freyer', department: 'CNE' },
{name: 'Julia Fulghum', department: 'CNE' },
{name: 'Steve Graves', department: 'CNE' },
{name: 'Sang Eon Han', department: 'CNE' },
{name: 'Sang Han', department: 'CNE' },
{name: 'Adam Hecht', department: 'CNE' },
{name: 'Phillip H. Heintz', department: 'CNE' },
{name: 'Ronald Loehman', department: 'CNE' },
{name: 'Gabriel Lopez', department: 'CNE' },
{name: 'Patrick McDaniel', department: 'CNE' },
{name: 'Dimiter Petsev', department: 'CNE' },
{name: 'Anil Prinja', department: 'CNE' },
{name: 'Norman Roderick', department: 'CNE' },
{name: 'Randall Schunk', department: 'CNE' },
{name: 'Andrew Shreve', department: 'CNE' },
{name: 'Scott Sibbett', department: 'CNE' },
{name: 'Jean-Michel Tournier', department: 'CNE' },
{name: 'Tim L. Ward', department: 'CNE' },
{name: 'David Whitten', department: 'CNE' },
{name: 'Yixiang Xie', department: 'CNE' },
  ]
professor_refs = {}


courses = [
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2012,
     professor: 'Heileman, Gregory', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2012'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2011,
     professor: 'Heileman, Gregory', department: 'ECE',
     unique_key: 'ECE-595-04-FALL-2011'
    },
    {code: 'ECE-595', name: 'Web Architectures and Cloud Computing',
     description: 'In this course we will consider web applications, and in particular the emerging
architectures and technoligies that are now being referred to as Web 2.0.',
     semester: 'Fall', year: 2003,
     professor: 'Heileman, Gregory', department: 'ECE',
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



