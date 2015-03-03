# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)


Category.create [
  {text: "Fundamentals 1"},
  {text: "Fundamentals 2"},
  {text: "Software Studies"},
  {text: "System Studies"},
  {text: "Algorithms & Intelligence"},
  {text: "Profession"}
]

cat1 = Category.find_by_text("Fundamentals 1").id
cat2 = Category.find_by_text("Fundamentals 2").id
cat3 = Category.find_by_text("Software Studies").id
cat4 = Category.find_by_text("System Studies").id
cat5 = Category.find_by_text("Algorithms & Intelligence").id
cat6 = Category.find_by_text("Profession").id

Course.create [
  {number: 202, text: "Intro to Computer Science", category_id: cat1},
  {number: 215, text: "Discrete Mathematics", category_id: cat1},
  {number: 220, text: "Programming with Data Structures", category_id: cat1},
  {number: 221, text: "Internet & Mobile Computing"},
  {number: 305, text: "Software Development Practices"},
  {number: 306, text: "Linux/UNIX Programming", category_id: cat2},
  {number: 311, text: "The Theory and Implementation of Programming Languages", category_id: cat2},
  {number: 320, text: "Computer Organization and Architecture", category_id: cat2},
  {number: 330, text: "Intro to Design and Analysis of Algorithms", category_id: cat2},
  {number: 335, text: "Operating Systems", category_id: cat2},
  {number: 350, text: "Web Application Development", category_id: cat3},
  {number: 399, text: "Social, Ethical and Professional Issues in Computer Science", category_id: cat1},
  {number: 401, text: "Comptuer Architecture"},
  {number: 404, text: "Autonomous Mobile Robots", category_id: cat5},
  {number: 408, text: "Applied Cryptography", category_id: cat4},
  {number: 410, text: "Computer Security", category_id: cat4},
  {number: 412, text: "Programming Distributed Applications"},
  {number: 420, text: "Distributed Systems"},
  {number: 430, text: "Database Systems", category_id: cat4},
  ### This Category was an educated guess
  {number: 435, text: "Software Engineering", category_id: cat3},
  ###
  {number: 438, text: "Bioinformatics Algorithms"},
  {number: 440, text: "Computer Networks", category_id: cat4},
  {number: 441, text: "Mobile and Wireless Computing", category_id: cat4},
  {number: 455, text: "Advanced Algorithm Design and Analysis", category_id: cat5},
  {number: 484, text: "User Interface Design and Development", category_id: cat3},
  {number: 485, text: "Computer Graphics", category_id: cat3},
  {number: 487, text: "Software Aspects of Game Development", category_id: cat3},
  {number: 498, text: "Senior Project in Computer Science 1", category_id: cat6},
  {number: 499, text: "Senior Project in Computer Science 2", category_id: cat6}
]

c202 = Course.find_by_number(202)
c215 = Course.find_by_number(215)
c220 = Course.find_by_number(220)
c221 = Course.find_by_number(221)
c305 = Course.find_by_number(305)
c306 = Course.find_by_number(306)
c311 = Course.find_by_number(311)
c320 = Course.find_by_number(320)
c330 = Course.find_by_number(330)
c335 = Course.find_by_number(335)
c350 = Course.find_by_number(350)
c399 = Course.find_by_number(399)
c401 = Course.find_by_number(401)
c404 = Course.find_by_number(404)
c408 = Course.find_by_number(408)
c410 = Course.find_by_number(410)
c412 = Course.find_by_number(412)
c420 = Course.find_by_number(420)
c430 = Course.find_by_number(430)
c435 = Course.find_by_number(435)
c438 = Course.find_by_number(438)
c440 = Course.find_by_number(440)
c441 = Course.find_by_number(441)
c455 = Course.find_by_number(455)
c484 = Course.find_by_number(484)
c485 = Course.find_by_number(485)
c487 = Course.find_by_number(487)
c498 = Course.find_by_number(498)
c499 = Course.find_by_number(499)


Outcome.create [
  {text: "O-1", description: "Ability to effectively apply knowledge of computing and mathematics to computer science problems."},
  {text: "O-2", description: "Ability to apply mathematical foundations, algorithmic principles, and computer science theory in the modeling and design of computer-based systems in a way that demonstrates comprehension of the trade-offs involved in design choices."},
  {text: "O-3", description: "Ability to design, implement and evaluate computer-based components, systems, processes or programs to meet desired needs and specifications."},
  {text: "O-4", description: "Ability to apply, design and develop principles in the construction of software systems of varying complexity."},
  {text: "O-5", description: "PO 5. Ability and skills to effectively use state-of-the-art techniques and computing tools for analysis, design, and implementation of computing systems."},
  {text: "O-6", description: "Ability to function effectively as a member of a team assembled to undertake a common goal."},
  {text: "O-7", description: "An understanding of professional, ethical, legal, security, and social issues and responsibilities."},
  {text: "O-8", description: "Ability to communicate effectively to both technical and non-technical audiences."},
  {text: "O-9", description: "Ability to analyze the local and the global impact of computing on individuals, organizations and society."},
  {text: "O-10", description: "Recognition of the need for and the ability to engage in life-long learning. The ability to successfully pursue professional development."}
]

o1 = Outcome.find_by_text("O-1")
o2 = Outcome.find_by_text("O-2")
o3 = Outcome.find_by_text("O-3")
o4 = Outcome.find_by_text("O-4")
o5 = Outcome.find_by_text("O-5")
o6 = Outcome.find_by_text("O-6")
o7 = Outcome.find_by_text("O-7")
o8 = Outcome.find_by_text("O-8")
o9 = Outcome.find_by_text("O-9")
o10 = Outcome.find_by_text("O-10")

EducationalObjective.create [
  {text: "PEO 1", description: "To provide students with a solid foundation in computer science, mathematics, and basic sciences, which will allow them to successfully pursue graduate studies in computer science, or other related degrees."},
  {text: "PEO 2", description: "To provide students with a solid foundation in computer science, mathematics, and basic sciences, which will allow them to successfully compete for quality jobs in all functions of computer science employment, ranging from software developer to customer support."},
  {text: "PEO 3", description: "To equip students with life-long learning skills, which will allow them to successfully adapt to the evolving technologies throughout their professional careers."},
  {text: "PEO 4", description: "To equip students with communication skills, which will allow them to collaborate effectively with other members of a team for the development of large computer and software systems."},
  {text: "PEO 5", description: "To provide students with the broad education necessary to understand the impact of computer technology in a global and societal context."}
]

peo1 = EducationalObjective.find_by_text "PEO 1"
peo2 = EducationalObjective.find_by_text "PEO 2"
peo3 = EducationalObjective.find_by_text "PEO 3"
peo4 = EducationalObjective.find_by_text "PEO 4"
peo5 = EducationalObjective.find_by_text "PEO 5"

# Map program educational objectives to outcomes
o1.educational_objectives << [peo1,peo2,peo3]
o2.educational_objectives << [peo1,peo2,peo3]
o3.educational_objectives << [peo2,peo3,peo4]
o4.educational_objectives << [peo1,peo2,peo4]
o5.educational_objectives << [peo2,peo3]
o6.educational_objectives << [peo2,peo3,peo4,peo5]
o7.educational_objectives << [peo2,peo4,peo5]
o8.educational_objectives << [peo1,peo2,peo3,peo4]
o9.educational_objectives << [peo2,peo5]
o10.educational_objectives << [peo1,peo2,peo3]

PreAssessment.create [
  {text: "Mathematics"},
  {text: "General Education"},
  {text: "Basic Sciences"},
  {text: "Computing Theory"},
  {text: "Programming Skills"},
  {text: "Software Development"},
  {text: "CS Foundations / Core Requirement"}
]

Instructor.create [
  {first_name: "Kemal", last_name: "Akkaya"},
  {first_name: "Bill", last_name: "Cheng"},
  {first_name: "Norman", last_name: "Carver"},
  {first_name: "Qiang", last_name: "Cheng"},
  {first_name: "Dunren", last_name: "Che"},
  {first_name: "Bidyut", last_name: "Gupta"},
  {first_name: "Henry", last_name: "Hexmoor"},
  {first_name: "Namdar", last_name: "Mogharreban"},
  {first_name: "Shahram", last_name: "Rahimi"},
  {first_name: "Michael", last_name: "Wainer"},
  {first_name: "Wen-Chi", last_name: "Hou"},
  {first_name: "Mengxia", last_name: "Zhu"},
  {first_name: "Mehrdad", last_name: "Nojoumian"},
  {first_name: "Justin", last_name: "Selgrad"},
  {first_name: "Nick", last_name: "Rahimi"},
  {first_name: "Adil", last_name: "Ibrahim"},
  {first_name: "Mingxuam", last_name: "Sun"},
  {first_name: "Mehdi", last_name: "Zargham"}
]

akkaya = Instructor.find_by_last_name "Akkaya"
bilcheng = Instructor.find_by_first_name_and_last_name "Bill", "Cheng"
carver = Instructor.find_by_last_name "Carver"
cheng = Instructor.find_by_first_name_and_last_name "Qiang", "Cheng"
che = Instructor.find_by_last_name "Che"
gupta = Instructor.find_by_last_name "Gupta"
hexmoor = Instructor.find_by_last_name "Hexmoor"
namdar = Instructor.find_by_first_name "Namdar"
rahimi = Instructor.find_by_first_name "Shahram"
wainer = Instrucotr.find_by_last_name "Wainer"
hou = Instructor.find_by_last_name "Hou"
zhu = Instructor.find_by_last_name "zhu"
mehrdad = Instructor.find_by_first_name "Mehrdad"
selgrad = Instructor.find_by_last_name "Selgrad"
nickrahimi = Instructor.find_by_first_name_and_last_name "Nick", "Rahimi"
ibrahim = Instructor.find_by_last_name "Ibrahim"
sun = Instructor.find_by_last_name "Sun"
zargham = Instructor.find_by_last_name "Zargham"

ScheduledCourse.create [
  # 2014
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2014, initial_bs: 23, final_bs: 21, instructor_id: billcheng.id},
  {course_id: c215.id, semester: "spring", year: 2014, initial_bs: 18, final_bs: 18, initial_ba: 6, final_ba: 6, instructor_id: mehrdad.id},
  {course_id: c220.id, semester: "spring", year: 2014, initial_bs: 18, final_bs: 18, instructor_id: billcheng.id},
  {course_id: c306.id, semester: "spring", year: 2014, initial_bs: 6, final_bs: 5, initial_ba: 10, final_ba: 6, instructor_id: carver.id},
  {course_id: c320.id, semester: "spring", year: 2014, initial_bs: 13, final_bs: 13, initial_ba: 6, final_ba: 6, instructor_id: hou.id},
  {course_id: c335.id, semester: "spring", year: 2014, initial_bs: 9, final_bs: 9, initial_ba: 5, final_ba: 5, instructor_id: gupta.id},
  {course_id: c350.id, semester: "spring", year: 2014, initial_ba: 6, final_ba: 6, instructor_id: che.id},
  {course_id: c401.id, semester: "spring", year: 2014, initial_bs: 31, final_bs: 31, instructor_id: hou.id}, # This is suspicious as it was listed as MS degree
  {course_id: c410.id, semester: "spring", year: 2014, initial_bs: 4, final_bs: 4, initial_ba: 4, final_ba: 4, instructor_id: akkaya.id}, # Suspicious due to report labeling
  {course_id: c435.id, semester: "spring", year: 2014, initial_bs: 14, final_bs: 14, instructor_id: akkaya.id},
  {course_id: c440.id, semester: "spring", year: 2014, initial_bs: 3, final_bs: 3, initial_ba: 2, final_ba: 2, instructor_id: gupta.id},
  {course_id: c484.id, semester: "spring", year: 2014, initial_bs: 7, final_bs: 6, initial_ba: 6, final_ba: 6, instructor_id: wainer.id},
  {course_id: c485.id, semester: "spring", year: 2014, initial_ba: 5, final_ba: 4, instructor_id: wainer.id},
  {course_id: c499.id, semester: "spring", year: 2014, initial_bs: 12, final_bs: 12, instructor_id: rahimi.id},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2014, initial_bs: 27, final_bs: 26, instructor_id: billcheng.id},
  {course_id: c215.id, semester: "fall", year: 2014, initial_bs: 25, final_bs: 25, initial_ba: 1, final_ba: 1, instructor_id: mehrdad.id},
  {course_id: c220.id, semester: "fall", year: 2014, initial_bs: 11, final_bs: 11, initial_ba: 6, final_ba: 6, instructor_id: selgrad.id},
  {course_id: c221.id, semester: "fall", year: 2014, initial_bs: 31, final_bs: 31, initial_ba: 11, final_ba: 11, instructor_id: nickrahimi.id},
  {course_id: c305.id, semester: "fall", year: 2014, initial_bs: 7, final_bs: 6, initial_ba: 8, final_ba: 8, instructor_id: wainer.id},
  {course_id: c306.id, semester: "fall", year: 2014, initial_bs: 8, final_bs: 4, initial_ba: 4, final_ba: 4, instructor_id: carver.id},
  {course_id: c311.id, semester: "fall", year: 2014, initial_bs: 11, final_bs: 11, initial_ba: 3, final_ba: 3, instructor_id: ibrahim.id},
  {course_id: c330.id, semester: "fall", year: 2014, initial_bs: 15, final_bs: 13, initial_ba: 11, final_ba: 11, instructor_id: hou.id},
  {course_id: c335.id, semester: "fall", year: 2014, initial_bs: 15, final_bs: 16, initial_ba: 4, final_ba: 4, instructor_id: ibrahim.id},
  # {course_id: c350.id, semester: "fall", year: 2014, initial_ba: 6, final_ba: 6, instructor_id: che.id}, # ONLINE HAS SOME DATA, BUT NO STUDENT ENROLLMENT NUMBERS
  {course_id: c408.id, semester: "fall", year: 2014, initial_bs: 4, final_bs: 3, instructor_id: gupta.id},
  {course_id: c412.id, semester: "fall", year: 2014, initial_ba: 3, final_ba: 3, instructor_id: nickrahimi.id}, 
  {course_id: c430.id, semester: "fall", year: 2014, initial_bs: 5, final_bs: 5, initial_ba: 7, final_ba: 7, instructor_id: che.id},
  {course_id: c437.id, semester: "fall", year: 2014, initial_bs: 8, final_bs: 8, initial_ba: 3, final_ba: 3, instructor_id: sun.id},
  {course_id: c487.id, semester: "fall", year: 2014, initial_bs: 5, final_bs: 5, initial_ba: 3, final_ba: 3, instructor_id: wainer.id},
  {course_id: c498.id, semester: "fall", year: 2014, initial_bs: 14, final_bs: 14, instructor_id: selgrad.id},

  # 2013
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2013, initial_bs: 14, final_bs: 14, instructor_id: namdar.id},
  {course_id: c215.id, semester: "spring", year: 2013, initial_bs: 24, final_bs: 24, initial_ba: 6, final_ba: 6, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "spring", year: 2013, initial_bs: 18, final_bs: 18, initial_ba: 8, final_ba: 8, instructor_id: zhu.id},
  {course_id: c306.id, semester: "spring", year: 2013, initial_bs: 11, final_bs: 11, initial_ba: 5, final_ba: 5, instructor_id: carver.id},
  {course_id: c330.id, semester: "spring", year: 2013, initial_bs: 13, final_bs: 13, initial_ba: 2, final_ba: 2, instructor_id: cheng.id},
  {course_id: c335.id, semester: "spring", year: 2013, initial_bs: 17, final_bs: 17, instructor_id: hou.id},
  {course_id: c350.id, semester: "spring", year: 2013, initial_bs: 6, final_bs: 6, initial_ba: 7, final_ba: 7, instructor_id: che.id},
  {course_id: c399.id, semester: "spring", year: 2013, initial_bs: 15, final_bs: 15, instructor_id: hexmoor.id},
  {course_id: c404.id, semester: "spring", year: 2013, initial_bs: 9, final_bs: 9, instructor_id: hexmoor.id},
  {course_id: c410.id, semester: "spring", year: 2013, initial_bs: 4, final_bs: 4, instructor_id: akkaya.id},
  {course_id: c440.id, semester: "spring", year: 2013, initial_bs: 7, final_bs: 7, instructor_id: gupta.id},
  {course_id: c484.id, semester: "spring", year: 2013, initial_bs: 10, final_bs: 9, instructor_id: wainer.id},
  {course_id: c485.id, semester: "spring", year: 2013, initial_bs: 10, final_bs: 10, instructor_id: wainer.id},
  {course_id: c499.id, semester: "spring", year: 2013, initial_bs: 13, final_bs: 13, instructor_id: rahimi.id},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2013, initial_bs: 17, final_bs: 17, initial_ba: 3, final_ba: 3, instructor_id: mehrdad.id},
  {course_id: c215.id, semester: "fall", year: 2013, initial_bs: 36, final_bs: 35, initial_ba: 7, final_ba: 6, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "fall", year: 2013, initial_bs: 11, final_bs: 10, initial_ba: 6, final_ba: 6, instructor_id: carver.id},
  {course_id: c305.id, semester: "fall", year: 2013, initial_bs: 0, final_bs: 0, initial_ba: 11, final_ba: 11, instructor_id: wainer.id},
  {course_id: c306.id, semester: "fall", year: 2013, initial_bs: 11, final_bs: 10, initial_ba: 5, final_ba: 5, instructor_id: carver.id},
  {course_id: c311.id, semester: "fall", year: 2013, initial_bs: 19, final_bs: 19, initial_ba: 8, final_ba: 8, instructor_id: rahimi.id},
  {course_id: c320.id, semester: "fall", year: 2013, initial_bs: 15, final_bs: 15, initial_ba: 6, final_ba: 6, instructor_id: hou.id},
  {course_id: c330.id, semester: "fall", year: 2013, initial_bs: 12, final_bs: 10, initial_ba: 9, final_ba: 8, instructor_id: cheng.id},
  {course_id: c399.id, semester: "fall", year: 2013, initial_bs: 8, final_bs: 8, initial_ba: 7, final_ba: 7, instructor_id: hexmoor.id},
  {course_id: c408.id, semester: "fall", year: 2013, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c430.id, semester: "fall", year: 2013, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c441.id, semester: "fall", year: 2013, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c455.id, semester: "fall", year: 2013, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c487.id, semester: "fall", year: 2013, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c498.id, semester: "fall", year: 2013, initial_bs: 14, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},

  # 2012
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2012, initial_bs: 17, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: hexmoor.id},
  {course_id: c215.id, semester: "spring", year: 2012, initial_bs: 29, final_bs: 27, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "spring", year: 2012, initial_bs: 11, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c306.id, semester: "spring", year: 2012, initial_bs: 15, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: carver.id},
  {course_id: c330.id, semester: "spring", year: 2012, initial_bs: 10, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c335.id, semester: "spring", year: 2012, initial_bs: 13, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c350.id, semester: "spring", year: 2012, initial_bs: 15, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c401.id, semester: "spring", year: 2012, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c404.id, semester: "spring", year: 2012, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: hexmoor.id},
  {course_id: c410.id, semester: "spring", year: 2012, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c440.id, semester: "spring", year: 2012, initial_bs: 11, final_bs:1, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c484.id, semester: "spring", year: 2012, initial_bs: 7, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c485.id, semester: "spring", year: 2012, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c499.id, semester: "spring", year: 2012, initial_bs: 16, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},
  # FALL
  {course_id: c215.id, semester: "fall", year: 2012, initial_bs: 30, final_bs: 30, initial_ba: 9, final_ba: 9, instructor_id: mehrdad.id},
  {course_id: c220.id, semester: "fall", year: 2012, initial_bs: 11, final_bs: 11, initial_ba: 3, final_ba: 2, instructor_id: carver.id},
  {course_id: c306.id, semester: "fall", year: 2012, initial_bs: 10, final_bs: 9, initial_ba: 4, final_ba: 4, instructor_id: carver.id},
  {course_id: c311.id, semester: "fall", year: 2012, initial_bs: 18, final_bs: 16, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c330.id, semester: "fall", year: 2012, initial_bs: 13, final_bs: 13, initial_ba: 4, final_ba: 4, instructor_id: cheng.id},
  {course_id: c335.id, semester: "fall", year: 2012, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c399.id, semester: "fall", year: 2012, initial_bs: 11, final_bs: 12, initial_ba: 0, final_ba: 7, instructor_id: hexmoor.id},
  {course_id: c408.id, semester: "fall", year: 2012, initial_bs: 2, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c420.id, semester: "fall", year: 2012, initial_bs: 2, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c430.id, semester: "fall", year: 2012, initial_bs: 13, final_bs: 13, initial_ba: 3, final_ba: 3, instructor_id: che.id},
  {course_id: c435.id, semester: "fall", year: 2012, initial_bs: 6, final_bs: 6, initial_ba: 2, final_ba: 2, instructor_id: zhu.id},
  {course_id: c455.id, semester: "fall", year: 2012, initial_bs: 4, final_bs: 3, initial_ba: 2, final_ba: 2, instructor_id: cheng.id},
  {course_id: c487.id, semester: "fall", year: 2012, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c498.id, semester: "fall", year: 2012, initial_bs: 14, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},

  # 2011
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2011, initial_bs: 44, final_bs: 36, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},
  {course_id: c215.id, semester: "spring", year: 2011, initial_bs: 10, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "spring", year: 2011, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c306.id, semester: "spring", year: 2011, initial_bs: 17, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: carver.id},
  {course_id: c320.id, semester: "spring", year: 2011, initial_bs: 22, final_bs: 21, initial_ba: 0, final_ba: 0, instructor_id: zargham.id},
  {course_id: c330.id, semester: "spring", year: 2011, initial_bs: 13, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c335.id, semester: "spring", year: 2011, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c350.id, semester: "spring", year: 2011, initial_bs: 5, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c410.id, semester: "spring", year: 2011, initial_bs: 22, final_bs: 19, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c440.id, semester: "spring", year: 2011, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c484.id, semester: "spring", year: 2011, initial_bs: 9, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c485.id, semester: "spring", year: 2011, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c499.id, semester: "spring", year: 2011, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  # FALL
  {course_id: c215.id, semester: "fall", year: 2011, initial_bs: 28, final_bs: 26, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "fall", year: 2011, initial_bs: 10, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c311.id, semester: "fall", year: 2011, initial_bs: 23, final_bs: 23, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c320.id, semester: "fall", year: 2011, initial_bs: 21, final_bs: 19, initial_ba: 0, final_ba: 0, instructor_id: zargham.id},
  {course_id: c330.id, semester: "fall", year: 2011, initial_bs: 19, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c335.id, semester: "fall", year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c399.id, semester: "fall", year: 2011, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},
  {course_id: c408.id, semester: "fall", year: 2011, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c420.id, semester: "fall", year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c430.id, semester: "fall", year: 2011, initial_bs: 13, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c437.id, semester: "fall", year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c441.id, semester: "fall", year: 2011, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c455.id, semester: "fall", year: 2011, initial_bs: 8, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c487.id, semester: "fall", year: 2011, initial_bs: 11, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c498.id, semester: "fall", year: 2011, initial_bs: 17, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},

  # 2010
  # SPRING
  {course_id: c215.id, semester: "spring", year: 2010, initial_bs: 15, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "spring", year: 2010, iinitial_bs: 20, final_bs: 20, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c311.id, semester: "spring", year: 2010, initial_bs: 13, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c320.id, semester: "spring", year: 2010, initial_bs: 19, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: zargham.id},
  {course_id: c330.id, semester: "spring", year: 2010, initial_bs: 11, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c335.id, semester: "spring", year: 2010, initial_bs: 7, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c350.id, semester: "spring", year: 2010, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c399.id, semester: "spring", year: 2010, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},
  {course_id: c404.id, semester: "spring", year: 2010, initial_bs: 3, final_bs: 3, initial_ba: 0, final_ba: 0, instructor_id: hexmoor.id},
  {course_id: c416.id, semester: "spring", year: 2010, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: hexmoor.id},
  {course_id: c440.id, semester: "spring", year: 2010, initial_bs: 11, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: gupta.id},
  {course_id: c484.id, semester: "spring", year: 2010, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c485.id, semester: "spring", year: 2010, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2010, initial_bs: 37, final_bs: 30, initial_ba: 0, final_ba: 0, instructor_id: namdar.id},
  {course_id: c215.id, semester: "fall", year: 2010, initial_bs: 15, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c220.id, semester: "fall", year: 2010, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: carver.id},
  {course_id: c306.id, semester: "fall", year: 2010, initial_bs: 19, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: carver.id},
  {course_id: c311.id, semester: "fall", year: 2010, initial_bs: 15, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c330.id, semester: "fall", year: 2010, initial_bs: 23, final_bs: 19, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c335.id, semester: "fall", year: 2010, initial_bs: 13, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: hou.id},
  {course_id: c420.id, semester: "fall", year: 2010, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: zhu.id},
  {course_id: c430.id, semester: "fall", year: 2010, initial_bs: 3, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: che.id},
  {course_id: c435.id, semester: "fall", year: 2010, initial_bs: 3, final_bs: 3, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c437.id, semester: "fall", year: 2010, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: rahimi.id},
  {course_id: c441.id, semester: "fall", year: 2010, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: akkaya.id},
  {course_id: c455.id, semester: "fall", year: 2010, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: cheng.id},
  {course_id: c487.id, semester: "fall", year: 2010, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: wainer.id},
  {course_id: c498.id, semester: "fall", year: 2010, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: zhu.id}
]





Score.create [
  ### REAL DATA ###
  # => FALL 2014
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.15},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 2.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 2.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 2.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 2.91},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 2.91},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.31},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.09},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.03},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 3.63},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.13},
  # 300
  # => CS 305
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o6.id, type: "BS", score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o8.id, type: "BS", score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.01},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o6.id, type: "BA", score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c305.id, "fall", 2014).id, outcome_id: o8.id, type: "BA", score: 3.38},
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 2.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.0},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.0},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 2.6},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.5},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.01},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.49},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2014).id, outcome_id: o6.id, type: "BS", score: 3.49},
  # => CS 412
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c412.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c412.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c412.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c412.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c412.id, "fall", 2014).id, outcome_id: o6.id, type: "BA", score: 3.42},

  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 2.98},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 2.53},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 2.67},
  # => CS 437
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 2.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o6.id, type: "BS", score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c437.id, "fall", 2014).id, outcome_id: o6.id, type: "BA", score: 3.41},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o1.id, type: "BS", score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o2.id, type: "BS", score: 3.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.74},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o7.id, type: "BS", score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o8.id, type: "BS", score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o1.id, type: "BA", score: 2.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o2.id, type: "BA", score: 2.69},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o3.id, type: "BA", score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o4.id, type: "BA", score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o5.id, type: "BA", score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o7.id, type: "BA", score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2014).id, outcome_id: o8.id, type: "BA", score: 3.57},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o3.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o4.id, type: "BS", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o5.id, type: "BS", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o6.id, type: "BS", score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o7.id, type: "BS", score: 3.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o8.id, type: "BS", score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2014).id, outcome_id: o9.id, type: "BS", score: 3.6},

  # => Spring 2014
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.15},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 2.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 2.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 2.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.4},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.16},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 2.86},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 2.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 2.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 3.0},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "spring", 2014).id, outcome_id: o4.id, type: "BA", score: 2.9},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o6.id, type: "BS", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o4.id, type: "BA", score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2014).id, outcome_id: o6.id, type: "BA", score: 3.2},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 2.78},
  # 400
  # => CS 401 THIS IS SUSPICIOUS DUE TO LABELD AS MS (BUT 31 STUDENTS??)
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c401.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c401.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c401.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.6},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o7.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2014).id, outcome_id: o7.id, type: "BA", score: 3.37},
  # => CS 435
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.63},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o6.id, type: "BS", score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c435.id, "spring", 2014).id, outcome_id: o8.id, type: "BS", score: 3.25},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o6.id, type: "BS", score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o4.id, type: "BA", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2014).id, outcome_id: o6.id, type: "BA", score: 3.0},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 2.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o2.id, type: "BS", score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o6.id, type: "BS", score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o8.id, type: "BS", score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 2.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 2.79},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.29},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o4.id, type: "BA", score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o6.id, type: "BA", score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2014).id, outcome_id: o8.id, type: "BA", score: 3.22},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2014).id, outcome_id: o1.id, type: "BA", score: 2.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2014).id, outcome_id: o2.id, type: "BA", score: 2.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2014).id, outcome_id: o3.id, type: "BA", score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2014).id, outcome_id: o4.id, type: "BA", score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2014).id, outcome_id: o5.id, type: "BA", score: 2.81},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o1.id, type: "BS", score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o3.id, type: "BS", score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o4.id, type: "BS", score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o5.id, type: "BS", score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o6.id, type: "BS", score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o7.id, type: "BS", score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o8.id, type: "BS", score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2014).id, outcome_id: o10.id, type: "BS", score: 3.35},


  # => FALL 2013
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o1.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o2.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o3.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o4.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o5.id, score: 3.38},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o1.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o2.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o3.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o6.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o8.id, score: 3.2},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o1.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o2.id, score: 1.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o3.id, score: 1.55},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o5.id, score: 3.2},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o1.id, score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o2.id, score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o3.id, score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o4.id, score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o5.id, score: 3.15},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o1.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o3.id, score: 3.6},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o1.id, score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o2.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o4.id, score: 3.33},
  # => CS 399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o1.id, score: 4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o8.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o9.id, score: 3},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o1.id, score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o2.id, score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o3.id, score: 3.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o4.id, score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o5.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o6.id, score: 3},
  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o2.id, score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o3.id, score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o5.id, score: 3.18},
  # => CS 441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o1.id, score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o2.id, score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o4.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o5.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o6.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o8.id, score: 3.38},
  # => CS 455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o1.id, score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o2.id, score: 1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o3.id, score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o4.id, score: 2.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o5.id, score: 2.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o6.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o8.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o9.id, score: 1.38},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o1.id, score: 3.74},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o2.id, score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o3.id, score: 3.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o4.id, score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o5.id, score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o7.id, score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o8.id, score: 3.48},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o3.id, score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o4.id, score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o5.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o6.id, score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o7.id, score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o8.id, score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o9.id, score: 3.21},

  # => Spring 2013
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o1.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o2.id, score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o3.id, score: 2.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o6.id, score: 4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o8.id, score: 4},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o1.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o2.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o3.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o4.id, score: 3.7},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o1.id, score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o3.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o5.id, score: 3.45},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o1.id, score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o3.id, score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o4.id, score: 3.11},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o1.id, score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o2.id, score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o3.id, score: 3.19},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2013).id, outcome_id: o2.id, score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2013).id, outcome_id: o3.id, score: 3.42},
  # 400
  # => CS 404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o1.id, score: 4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o3.id, score: 4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o7.id, score: 3.6},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o3.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o5.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o7.id, score: 3.12},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o1.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o2.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o3.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o4.id, score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o5.id, score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o6.id, score: 3.2},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o1.id, score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o2.id, score: 3.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o3.id, score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o4.id, score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o5.id, score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o6.id, score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o8.id, score: 3.51},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o1.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o2.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o3.id, score: 3.66},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o4.id, score: 3.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o5.id, score: 3.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o6.id, score: 3.6},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o3.id, score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o4.id, score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o5.id, score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o6.id, score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o7.id, score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o8.id, score: 3.62},




  ### TEST DATA (NOT REAL) ###
  # => FALL 2012
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o1.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o2.id, score: 2.76},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o4.id, score: 2.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o5.id, score: 2.9},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o1.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o2.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o3.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o6.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o8.id, score: 3},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o1.id, score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o2.id, score: 1.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o3.id, score: 1.75},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o1.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o2.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o3.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o5.id, score: 3},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o2.id, score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o4.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o5.id, score: 3.2},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o1.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o2.id, score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o3.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o4.id, score: 3},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o1.id, score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o2.id, score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o3.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o4.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o5.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o6.id, score: 3.31},
  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o2.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o3.id, score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o5.id, score: 3.12},
  # => CS 455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o1.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o2.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o3.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o4.id, score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o5.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o6.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o8.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o9.id, score: 2.38},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o2.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o4.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o5.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o7.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o8.id, score: 3.8},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o3.id, score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o4.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o5.id, score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o6.id, score: 3.39},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o7.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o8.id, score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o9.id, score: 3.35},

  # BAD 400 LEVEL STUDENTS
  # => Spring 2012
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o1.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o2.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o3.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o4.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o1.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o3.id, score: 3.04},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o6.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o1.id, score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o2.id, score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o3.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o4.id, score: 3.03},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o2.id, score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o3.id, score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o5.id, score: 3.61},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o1.id, score: 2.89},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o2.id, score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o3.id, score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o4.id, score: 3.07},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o1.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o2.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o3.id, score: 3.12},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2012).id, outcome_id: o2.id, score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2012).id, outcome_id: o3.id, score: 3.25},
  # 400
  # => CS 404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o1.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o2.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o7.id, score: 3.07},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o1.id, score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o2.id, score: 2.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o5.id, score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o7.id, score: 3.05},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o1.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o3.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o4.id, score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o6.id, score: 2.9},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o2.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o3.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o4.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o5.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o6.id, score: 3.03},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o1.id, score: 3.02},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o3.id, score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o4.id, score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o5.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o6.id, score: 3},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o3.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o4.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o6.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o7.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},


  # BAD 400 LEVEL STUDENTS
  # => FALL 2011
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o1.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o2.id, score: 2.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o3.id, score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o5.id, score: 3},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o1.id, score: 2.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o2.id, score: 2.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o3.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o6.id, score: 2.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o8.id, score: 2.98},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o1.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o2.id, score: 2.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o3.id, score: 2.75},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o3.id, score: 2.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o5.id, score: 3.05},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o1.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o3.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o4.id, score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o5.id, score: 3.25},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o1.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o2.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o3.id, score: 3.1},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o1.id, score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o2.id, score: 2.99},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o3.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o4.id, score: 3.02},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o2.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o3.id, score: 3.03},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o4.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o5.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o2.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o3.id, score: 3.02},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o5.id, score: 3.12},
  # => CS 441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o1.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o2.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o5.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o8.id, score: 3},
  # => CS 455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o1.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o2.id, score: 2.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o3.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o5.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o6.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o8.id, score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o9.id, score: 2},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o3.id, score: 3.01},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o4.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o5.id, score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o7.id, score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o8.id, score: 2.8},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o3.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o4.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o5.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o7.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o8.id, score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o9.id, score: 2.94},

  # BAD 300 LEVEL STUDENTS
  # => Spring 2011
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o1.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o2.id, score: 2.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o3.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o5.id, score: 2.8},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o2.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o3.id, score: 3.04},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o6.id, score: 2.98},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o8.id, score: 2.6},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o1.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o2.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o3.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o1.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o2.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o3.id, score: 2.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o5.id, score: 2.7},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o1.id, score: 2.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o2.id, score: 1.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o3.id, score: 2.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o2.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o3.id, score: 2.6},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2011).id, outcome_id: o2.id, score: 2.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2011).id, outcome_id: o3.id, score: 1},
  # 400
  # => CS 404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o1.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o3.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o7.id, score: 3.17},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o1.id, score: 3.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o2.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o3.id, score: 3.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o5.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o7.id, score: 3.35},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o1.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o2.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o3.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o4.id, score: 4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o5.id, score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o6.id, score: 3.32},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o3.id, score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o4.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o5.id, score: 3.54},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o6.id, score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o8.id, score: 3.19},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o1.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o3.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o4.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o5.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o6.id, score: 3.2},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o3.id, score: 3.61},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o4.id, score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o5.id, score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o6.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o7.id, score: 3.46},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o8.id, score: 3.3},


  # BAD 300 LEVEL STUDENTS
  # => FALL 2010
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o1.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o2.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o3.id, score: 2.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o4.id, score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o5.id, score: 2.2},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o1.id, score: 2.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o2.id, score: 2.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o3.id, score: 2.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o6.id, score: 2.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o8.id, score: 2.7},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o1.id, score: 2.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o2.id, score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o3.id, score: 2.6},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o1.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o2.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o3.id, score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o5.id, score: 2.2},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o1.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o2.id, score: 2.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o3.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o4.id, score: 2.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o5.id, score: 2.3},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o1.id, score: 2.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o2.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o3.id, score: 2.5},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o1.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o2.id, score: 2.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o3.id, score: 2.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o4.id, score: 2.43},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o1.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o2.id, score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o3.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o4.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o5.id, score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o6.id, score: 3.4},
  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o2.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o3.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o5.id, score: 3.08},
  # => CS 441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o1.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o2.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o3.id, score: 3.54},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o4.id, score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o5.id, score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o6.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o8.id, score: 3.26},
  # => CS 455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o1.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o2.id, score: 2.87},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o3.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o4.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o5.id, score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o6.id, score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o8.id, score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o9.id, score: 3.4},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o1.id, score: 3.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o2.id, score: 3.54},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o3.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o4.id, score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o5.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o7.id, score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o8.id, score: 3.6},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o3.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o4.id, score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o5.id, score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o6.id, score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o7.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o8.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o9.id, score: 3.23},

  # BAD 200 LEVEL STUDENTS
  # => Spring 2010
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o1.id, score: 1.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o2.id, score: 1.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o3.id, score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o4.id, score: 1.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o5.id, score: 1.83},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o1.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o2.id, score: 2.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o3.id, score: 1.89},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o6.id, score: 1.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o8.id, score: 2},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o1.id, score: 2.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o2.id, score: 2.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o3.id, score: 2.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o4.id, score: 1.95},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o1.id, score: 2.87},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o2.id, score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o3.id, score: 2.93},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o5.id, score: 3},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o1.id, score: 3.02},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o2.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o3.id, score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o4.id, score: 3.1},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o3.id, score: 3.1},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2010).id, outcome_id: o2.id, score: 3.04},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2010).id, outcome_id: o3.id, score: 2.86},
  # 400
  # => CS 404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o1.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o2.id, score: 3.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o3.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o7.id, score: 3.31},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o2.id, score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o3.id, score: 3.54},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o5.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o7.id, score: 3.84},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o1.id, score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o2.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o3.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o4.id, score: 3.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o5.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o6.id, score: 3.28},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o1.id, score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o2.id, score: 3.54},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o3.id, score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o4.id, score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o5.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o8.id, score: 3.38},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o2.id, score: 3.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o3.id, score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o4.id, score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o5.id, score: 3.82},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o3.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o4.id, score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o5.id, score: 3.82},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o7.id, score: 3.53},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o8.id, score: 3.4},


  # BAD 200 LEVEL STUDENTS
  # => FALL 2009
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o1.id, score: 1.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o2.id, score: 1.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o3.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o4.id, score: 1.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o5.id, score: 1.85},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o1.id, score: 1.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o2.id, score: 1.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o3.id, score: 1.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o6.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o8.id, score: 2.1},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o1.id, score: 1.87},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o2.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o3.id, score: 2.04},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o1.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o2.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o3.id, score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o5.id, score: 3.93},
  # => CS 311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o1.id, score: 2.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o2.id, score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o3.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o4.id, score: 2.79},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o5.id, score: 2.74},
  # => CS 320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o1.id, score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o2.id, score: 2.99},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o3.id, score: 2.81},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o1.id, score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o2.id, score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o3.id, score: 2.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o4.id, score: 3.04},
  # 400
  # => CS 408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o2.id, score: 3.63},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o3.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o4.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o5.id, score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o6.id, score: 3.32},
  # => CS 430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o2.id, score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o3.id, score: 3.86},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o5.id, score: 3.3},
  # => CS 441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o1.id, score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o2.id, score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o3.id, score: 3.76},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o4.id, score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o5.id, score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o6.id, score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o8.id, score: 4},
  # => CS 455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o1.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o2.id, score: 2.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o3.id, score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o4.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o5.id, score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o6.id, score: 3.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o8.id, score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o9.id, score: 3.27},
  # => CS 487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o1.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o2.id, score: 3.76},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o3.id, score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o4.id, score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o5.id, score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o7.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o8.id, score: 3.5},
  # => CS 498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o3.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o4.id, score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o5.id, score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o6.id, score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o7.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o8.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o9.id, score: 3.66},


  # => Spring 2009
  # => CS 202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o1.id, score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o2.id, score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o3.id, score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o4.id, score: 2.64},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o5.id, score: 2.5},
  # => CS 215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o1.id, score: 2.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o2.id, score: 2.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o3.id, score: 2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o6.id, score: 2.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o8.id, score: 2.7},
  # => CS 220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o1.id, score: 2.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o2.id, score: 2.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o3.id, score: 2.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o4.id, score: 2.15},
  # 300
  # => CS 306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o1.id, score: 3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o2.id, score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o3.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o5.id, score: 3.12},
  # => CS 330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o1.id, score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o2.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o3.id, score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o4.id, score: 3.07},
  # => CS 335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o1.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o2.id, score: 3.09},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o3.id, score: 3.05},
  # => CS 350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2009).id, outcome_id: o2.id, score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2009).id, outcome_id: o3.id, score: 3},
  # 400
  # => CS 404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o1.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o2.id, score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o3.id, score: 3.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o7.id, score: 3.5},
  # => CS 410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o1.id, score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o3.id, score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o5.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o7.id, score: 3.46},
  # => CS 440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o1.id, score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o2.id, score: 3.61},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o3.id, score: 3.46},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o4.id, score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o5.id, score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o6.id, score: 3.26},
  # => CS 484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o1.id, score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o2.id, score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o3.id, score: 3.64},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o4.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o5.id, score: 3.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o6.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o8.id, score: 3.85},
  # => CS 485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o1.id, score: 3.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o2.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o3.id, score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o4.id, score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o5.id, score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o6.id, score: 3.53},
  # => CS 499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o3.id, score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o4.id, score: 3.64},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o5.id, score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o6.id, score: 3.59},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o7.id, score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o8.id, score: 3.5}

]


puts "DB Seeding Complete"