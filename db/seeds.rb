# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

siuCS = Curriculum.new(text: "Southern Illinois University Computer Science")
siuCS.save

testCurr = Curriculum.new(text: "Test Curriculum")
testCurr.save

PreAssessment.create [
  {text: "Mathematics", curriculum_id: siuCS.id},
  {text: "General Education", curriculum_id: siuCS.id},
  {text: "Basic Sciences", curriculum_id: siuCS.id},
  {text: "Computing Theory", curriculum_id: siuCS.id},
  {text: "Programming Skills", curriculum_id: siuCS.id},
  {text: "Software Development", curriculum_id: siuCS.id},
  {text: "CS Foundations / Core Requirement", curriculum_id: siuCS.id}
]


Category.create [
  {text: "Fundamentals 1", curriculum_id: siuCS.id},
  {text: "Fundamentals 2", curriculum_id: siuCS.id},
  {text: "Software Studies", curriculum_id: siuCS.id},
  {text: "System Studies", curriculum_id: siuCS.id},
  {text: "Algorithms & Intelligence", curriculum_id: siuCS.id},
  {text: "Profession", curriculum_id: siuCS.id}
]

cat1 = Category.find_by_text("Fundamentals 1").id
cat2 = Category.find_by_text("Fundamentals 2").id
cat3 = Category.find_by_text("Software Studies").id
cat4 = Category.find_by_text("System Studies").id
cat5 = Category.find_by_text("Algorithms & Intelligence").id
cat6 = Category.find_by_text("Profession").id

Outcome.create [
  {text: "O-1", description: "Ability to effectively apply knowledge of computing and mathematics to computer science problems.", curriculum_id: siuCS.id},
  {text: "O-2", description: "Ability to apply mathematical foundations, algorithmic principles, and computer science theory in the modeling and design of computer-based systems in a way that demonstrates comprehension of the trade-offs involved in design choices.", curriculum_id: siuCS.id},
  {text: "O-3", description: "Ability to design, implement and evaluate computer-based components, systems, processes or programs to meet desired needs and specifications.", curriculum_id: siuCS.id},
  {text: "O-4", description: "Ability to apply, design and develop principles in the construction of software systems of varying complexity.", curriculum_id: siuCS.id},
  {text: "O-5", description: "PO 5. Ability and skills to effectively use state-of-the-art techniques and computing tools for analysis, design, and implementation of computing systems.", curriculum_id: siuCS.id},
  {text: "O-6", description: "Ability to function effectively as a member of a team assembled to undertake a common goal.", curriculum_id: siuCS.id},
  {text: "O-7", description: "An understanding of professional, ethical, legal, security, and social issues and responsibilities.", curriculum_id: siuCS.id},
  {text: "O-8", description: "Ability to communicate effectively to both technical and non-technical audiences.", curriculum_id: siuCS.id},
  {text: "O-9", description: "Ability to analyze the local and the global impact of computing on individuals, organizations and society.", curriculum_id: siuCS.id},
  {text: "O-10", description: "Recognition of the need for and the ability to engage in life-long learning. The ability to successfully pursue professional development.", curriculum_id: siuCS.id}
]

Outcome.create [
  {text: "TO-1", description: "Test Outcome 1", curriculum_id: testCurr.id},
  {text: "TO-2", description: "Test Outcome 2", curriculum_id: testCurr.id},
  {text: "TO-3", description: "Test Outcome 3", curriculum_id: testCurr.id}
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

to1 = Outcome.find_by_text("TO-1")
to2 = Outcome.find_by_text("TO-2")
to3 = Outcome.find_by_text("TO-3")


EducationalObjective.create [
  {text: "PEO 1", description: "To provide students with a solid foundation in computer science, mathematics, and basic sciences, which will allow them to successfully pursue graduate studies in computer science, or other related degrees.", curriculum_id: siuCS.id},
  {text: "PEO 2", description: "To provide students with a solid foundation in computer science, mathematics, and basic sciences, which will allow them to successfully compete for quality jobs in all functions of computer science employment, ranging from software developer to customer support.", curriculum_id: siuCS.id},
  {text: "PEO 3", description: "To equip students with life-long learning skills, which will allow them to successfully adapt to the evolving technologies throughout their professional careers.", curriculum_id: siuCS.id},
  {text: "PEO 4", description: "To equip students with communication skills, which will allow them to collaborate effectively with other members of a team for the development of large computer and software systems.", curriculum_id: siuCS.id},
  {text: "PEO 5", description: "To provide students with the broad education necessary to understand the impact of computer technology in a global and societal context.", curriculum_id: siuCS.id}
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


# Course.create [
#   {number: 202, text: "Intro to Computer Science", category_id: cat1, curriculum_id: siuCS.id},
#   {number: 215, text: "Discrete Mathematics", category_id: cat1, curriculum_id: siuCS.id},
#   {number: 220, text: "Programming with Data Structures", category_id: cat1, curriculum_id: siuCS.id},
#   {number: 221, text: "Internet & Mobile Computing", curriculum_id: siuCS.id},
#   {number: 305, text: "Software Development Practices", curriculum_id: siuCS.id},
#   {number: 306, text: "Linux/UNIX Programming", category_id: cat2, curriculum_id: siuCS.id},
#   {number: 311, text: "The Theory and Implementation of Programming Languages", category_id: cat2, curriculum_id: siuCS.id},
#   {number: 320, text: "Computer Organization and Architecture", category_id: cat2, curriculum_id: siuCS.id},
#   {number: 330, text: "Intro to Design and Analysis of Algorithms", category_id: cat2, curriculum_id: siuCS.id},
#   {number: 335, text: "Operating Systems", category_id: cat2, curriculum_id: siuCS.id},
#   {number: 350, text: "Web Application Development", category_id: cat3, curriculum_id: siuCS.id},
#   {number: 399, text: "Social, Ethical and Professional Issues in Computer Science", category_id: cat1, curriculum_id: siuCS.id},
#   {number: 401, text: "Comptuer Architecture", curriculum_id: siuCS.id},
#   {number: 404, text: "Autonomous Mobile Robots", category_id: cat5, curriculum_id: siuCS.id},
#   {number: 408, text: "Applied Cryptography", category_id: cat4, curriculum_id: siuCS.id},
#   {number: 410, text: "Computer Security", category_id: cat4, curriculum_id: siuCS.id},
#   {number: 412, text: "Programming Distributed Applications", curriculum_id: siuCS.id},
#   {number: 420, text: "Distributed Systems", curriculum_id: siuCS.id},
#   {number: 430, text: "Database Systems", category_id: cat4, curriculum_id: siuCS.id},
#   ### This Category was an educated guess
#   {number: 435, text: "Software Engineering", category_id: cat3, curriculum_id: siuCS.id},
#   ###
#   {number: 438, text: "Bioinformatics Algorithms", curriculum_id: siuCS.id},
#   {number: 440, text: "Computer Networks", category_id: cat4, curriculum_id: siuCS.id},
#   {number: 441, text: "Mobile and Wireless Computing", category_id: cat4, curriculum_id: siuCS.id},
#   {number: 455, text: "Advanced Algorithm Design and Analysis", category_id: cat5, curriculum_id: siuCS.id},
#   {number: 484, text: "User Interface Design and Development", category_id: cat3, curriculum_id: siuCS.id},
#   {number: 485, text: "Computer Graphics", category_id: cat3, curriculum_id: siuCS.id},
#   {number: 487, text: "Software Aspects of Game Development", category_id: cat3, curriculum_id: siuCS.id},
#   {number: 498, text: "Senior Project in Computer Science 1", category_id: cat6, curriculum_id: siuCS.id},
#   {number: 499, text: "Senior Project in Computer Science 2", category_id: cat6, curriculum_id: siuCS.id}
# ]


#Courses:
Course.create [
  {number: 100, text: 'Test Course 100', curriculum_id: testCurr.id},
  {number: 101, text: 'Test Course 101', curriculum_id: testCurr.id},
  {number: 102, text: 'Test course 102', curriculum_id: testCurr.id}
]

Course.create [
  {number: 202,text: 'Introduction to Computer Science',curriculum_id: siuCS.id, category_id: cat1},
  {number: 215,text: 'Discrete Mathematics',curriculum_id: siuCS.id, category_id: cat1},
  {number: 220,text: 'Programming with data Structures',curriculum_id: siuCS.id, category_id: cat1},
  {number: 221,text: 'Internet & Mobile Computing',curriculum_id: siuCS.id},
  {number: 305,text: 'Software Development Practices',curriculum_id: siuCS.id},
  {number: 306,text: 'Linux/UNIX Programming',curriculum_id: siuCS.id, category_id: cat2},
  {number: 311,text: 'The Theory and Implementation of Programming Languages',curriculum_id: siuCS.id, category_id: cat2},
  {number: 320,text: 'Computer Organization and Architecture',curriculum_id: siuCS.id, category_id: cat2},
  {number: 330,text: 'Intro to Design and Analysis of Algorithms',curriculum_id: siuCS.id, category_id: cat2},
  {number: 335,text: 'Operating System',curriculum_id: siuCS.id, category_id: cat2},
  {number: 350,text: 'Web Application Development',curriculum_id: siuCS.id, category_id: cat3},
  {number: 399,text: 'Social, Ethical and Professional issues in Computer Science',curriculum_id: siuCS.id, category_id: cat1},
  {number: 401,text: 'Computer Architecture',curriculum_id: siuCS.id},
  {number: 404,text: 'Autonomous Mobile Robotics',curriculum_id: siuCS.id, category_id: cat5},
  {number: 408,text: 'Applied Cryptography',curriculum_id: siuCS.id, category_id: cat4},
  {number: 410,text: 'Computer Security',curriculum_id: siuCS.id, category_id: cat4},
  {number: 412,text: 'Programming Distributed Apps',curriculum_id: siuCS.id},
  {number: 416,text: 'Compiler Construction',curriculum_id: siuCS.id},
  {number: 420,text: 'Parallel and Distributed Computing Techniques and Applications',curriculum_id: siuCS.id},
  {number: 430,text: 'Database Systems',curriculum_id: siuCS.id, category_id: cat4},
  {number: 435,text: 'Software Engineering',curriculum_id: siuCS.id, category_id: cat3},
  {number: 437,text: 'Expert Systems',curriculum_id: siuCS.id},
  {number: 440,text: 'Computer Networks',curriculum_id: siuCS.id, category_id: cat4},
  {number: 441,text: 'Mobile and Wireless Computing',curriculum_id: siuCS.id, category_id: cat4},
  {number: 455,text: 'Advanced Algorithm Design and Analysis',curriculum_id: siuCS.id, category_id: cat5},
  {number: 484,text: 'User Interface Design and Development',curriculum_id: siuCS.id, category_id: cat3},
  {number: 485,text: 'Computer Graphics',curriculum_id: siuCS.id, category_id: cat3},
  {number: 487,text: 'Software Aspects of Game Development',curriculum_id: siuCS.id, category_id: cat3},
  {number: 498,text: 'Senior Project in Computer Science I',curriculum_id: siuCS.id, category_id: cat6},
  {number: 499,text: 'Senior Project in Computer Science II',curriculum_id: siuCS.id, category_id: cat6}
]

siuCS202 = Course.find_by_number_and_curriculum_id(202,siuCS.id)
siuCS215 = Course.find_by_number_and_curriculum_id(215,siuCS.id)
siuCS220 = Course.find_by_number_and_curriculum_id(220,siuCS.id)
siuCS221 = Course.find_by_number_and_curriculum_id(221,siuCS.id)
siuCS305 = Course.find_by_number_and_curriculum_id(305,siuCS.id)
siuCS306 = Course.find_by_number_and_curriculum_id(306,siuCS.id)
siuCS311 = Course.find_by_number_and_curriculum_id(311,siuCS.id)
siuCS320 = Course.find_by_number_and_curriculum_id(320,siuCS.id)
siuCS330 = Course.find_by_number_and_curriculum_id(330,siuCS.id)
siuCS335 = Course.find_by_number_and_curriculum_id(335,siuCS.id)
siuCS350 = Course.find_by_number_and_curriculum_id(350,siuCS.id)
siuCS399 = Course.find_by_number_and_curriculum_id(399,siuCS.id)
siuCS401 = Course.find_by_number_and_curriculum_id(401,siuCS.id)
siuCS404 = Course.find_by_number_and_curriculum_id(404,siuCS.id)
siuCS408 = Course.find_by_number_and_curriculum_id(408,siuCS.id)
siuCS410 = Course.find_by_number_and_curriculum_id(410,siuCS.id)
siuCS412 = Course.find_by_number_and_curriculum_id(412,siuCS.id)
siuCS416 = Course.find_by_number_and_curriculum_id(416,siuCS.id)
siuCS420 = Course.find_by_number_and_curriculum_id(420,siuCS.id)
siuCS430 = Course.find_by_number_and_curriculum_id(430,siuCS.id)
siuCS435 = Course.find_by_number_and_curriculum_id(435,siuCS.id)
siuCS437 = Course.find_by_number_and_curriculum_id(437,siuCS.id)
siuCS440 = Course.find_by_number_and_curriculum_id(440,siuCS.id)
siuCS441 = Course.find_by_number_and_curriculum_id(441,siuCS.id)
siuCS455 = Course.find_by_number_and_curriculum_id(455,siuCS.id)
siuCS484 = Course.find_by_number_and_curriculum_id(484,siuCS.id)
siuCS485 = Course.find_by_number_and_curriculum_id(485,siuCS.id)
siuCS487 = Course.find_by_number_and_curriculum_id(487,siuCS.id)
siuCS498 = Course.find_by_number_and_curriculum_id(498,siuCS.id)
siuCS499 = Course.find_by_number_and_curriculum_id(499,siuCS.id)

#Instructors:
Instructor.create [
  {first_name: 'Kemal', last_name: 'Akkaya', curriculum_id: siuCS.id},
  {first_name: 'Wen-Chi', last_name: 'Hou', curriculum_id: siuCS.id},
  {first_name: 'Dunren', last_name: 'Che', curriculum_id: siuCS.id},
  {first_name: 'Norman', last_name: 'Carver', curriculum_id: siuCS.id},
  {first_name: 'Michael', last_name: 'Wainer', curriculum_id: siuCS.id},
  {first_name: 'Namdar', last_name: 'Mogharreban', curriculum_id: siuCS.id},
  {first_name: 'Shahram', last_name: 'Rahimi', curriculum_id: siuCS.id},
  {first_name: 'Mengxia', last_name: 'Zhu', curriculum_id: siuCS.id},
  {first_name: 'Mehdi', last_name: 'Zargham', curriculum_id: siuCS.id},
  {first_name: 'Bidyut', last_name: 'Gupta', curriculum_id: siuCS.id},
  {first_name: 'Mehrdad', last_name: 'Nojoumian', curriculum_id: siuCS.id},
  {first_name: 'Henry', last_name: 'Hexmoor', curriculum_id: siuCS.id},
  {first_name: 'Qiang', last_name: 'Shawn', curriculum_id: siuCS.id},
  {first_name: 'Bill', last_name: 'Cheng', curriculum_id: siuCS.id},
  {first_name: 'Justin', last_name: 'Selgrad', curriculum_id: siuCS.id},
  {first_name: 'Adil', last_name: 'Ibrahim', curriculum_id: siuCS.id},
  {first_name: 'Nick', last_name: 'Rahimi', curriculum_id: siuCS.id},
  {first_name: 'Mingxuan', last_name: 'Sun', curriculum_id: siuCS.id}
]

siuCSKemalAkkaya = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Kemal','Akkaya',siuCS.id)
siuCSWen_ChiHou = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Wen-Chi','Hou',siuCS.id)
siuCSDunrenChe = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Dunren','Che',siuCS.id)
siuCSNormanCarver = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Norman','Carver',siuCS.id)
siuCSMichaelWainer = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Michael','Wainer',siuCS.id)
siuCSNamdarMogharreban = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Namdar','Mogharreban',siuCS.id)
siuCSShahramRahimi = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Shahram','Rahimi',siuCS.id)
siuCSMengxiaZhu = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Mengxia','Zhu',siuCS.id)
siuCSMehdiZargham = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Mehdi','Zargham',siuCS.id)
siuCSBidyutGupta = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Bidyut','Gupta',siuCS.id)
siuCSMehrdadNojoumian = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Mehrdad','Nojoumian',siuCS.id)
siuCSHenryHexmoor = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Henry','Hexmoor',siuCS.id)
siuCSQiangShawn = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Qiang','Shawn',siuCS.id)
siuCSBillCheng = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Bill','Cheng',siuCS.id)
siuCSJustinSelgrad = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Justin','Selgrad',siuCS.id)
siuCSAdilIbrahim = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Adil','Ibrahim',siuCS.id)
siuCSNickRahimi = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Nick','Rahimi',siuCS.id)
siuCSMingxuanSun = Instructor.find_by_first_name_and_last_name_and_curriculum_id('Mingxuan','Sun',siuCS.id)

#Scheduled Courses:
ScheduledCourse.create [
  #FOR 2010
  #spring
  {course_id: siuCS215.id, semester: 'spring', year: 2010, initial_bs: 15, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'spring', year: 2010, initial_bs: 20, final_bs: 20, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS311.id, semester: 'spring', year: 2010, initial_bs: 13, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS320.id, semester: 'spring', year: 2010, initial_bs: 19, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: siuCSMehdiZargham.id},
  {course_id: siuCS330.id, semester: 'spring', year: 2010, initial_bs: 11, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS335.id, semester: 'spring', year: 2010, initial_bs: 7, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS350.id, semester: 'spring', year: 2010, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS399.id, semester: 'spring', year: 2010, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  {course_id: siuCS404.id, semester: 'spring', year: 2010, initial_bs: 3, final_bs: 3, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS416.id, semester: 'spring', year: 2010, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS440.id, semester: 'spring', year: 2010, initial_bs: 11, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS484.id, semester: 'spring', year: 2010, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS485.id, semester: 'spring', year: 2010, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  #fall
  {course_id: siuCS202.id, semester: 'fall', year: 2010, initial_bs: 37, final_bs: 30, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  {course_id: siuCS215.id, semester: 'fall', year: 2010, initial_bs: 15, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'fall', year: 2010, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS306.id, semester: 'fall', year: 2010, initial_bs: 19, final_bs: 19, initial_ba: 0, final_ba: 0, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS311.id, semester: 'fall', year: 2010, initial_bs: 15, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS335.id, semester: 'fall', year: 2010, initial_bs: 13, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS420.id, semester: 'fall', year: 2010, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS430.id, semester: 'fall', year: 2010, initial_bs: 3, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS435.id, semester: 'fall', year: 2010, initial_bs: 3, final_bs: 3, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS437.id, semester: 'fall', year: 2010, initial_bs: 0, final_bs: 0, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS441.id, semester: 'fall', year: 2010, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS487.id, semester: 'fall', year: 2010, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS498.id, semester: 'fall', year: 2010, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},

  #FOR 2011
  #spring
  {course_id: siuCS202.id, semester: 'spring', year: 2011, initial_bs: 44, final_bs: 36, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  {course_id: siuCS215.id, semester: 'spring', year: 2011, initial_bs: 10, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'spring', year: 2011, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS320.id, semester: 'spring', year: 2011, initial_bs: 22, final_bs: 21, initial_ba: 0, final_ba: 0, instructor_id: siuCSMehdiZargham.id},
  {course_id: siuCS335.id, semester: 'spring', year: 2011, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS350.id, semester: 'spring', year: 2011, initial_bs: 5, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS410.id, semester: 'spring', year: 2011, initial_bs: 22, final_bs: 0, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS440.id, semester: 'spring', year: 2011, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS484.id, semester: 'spring', year: 2011, initial_bs: 9, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS485.id, semester: 'spring', year: 2011, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS499.id, semester: 'spring', year: 2011, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  #fall
  {course_id: siuCS215.id, semester: 'fall', year: 2011, initial_bs: 28, final_bs: 26, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'fall', year: 2011, initial_bs: 10, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS311.id, semester: 'fall', year: 2011, initial_bs: 23, final_bs: 23, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS320.id, semester: 'fall', year: 2011, initial_bs: 21, final_bs: 19, initial_ba: 0, final_ba: 0, instructor_id: siuCSMehdiZargham.id},
  {course_id: siuCS335.id, semester: 'fall', year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS399.id, semester: 'fall', year: 2011, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  {course_id: siuCS408.id, semester: 'fall', year: 2011, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS420.id, semester: 'fall', year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS430.id, semester: 'fall', year: 2011, initial_bs: 13, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS437.id, semester: 'fall', year: 2011, initial_bs: 5, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS441.id, semester: 'fall', year: 2011, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS487.id, semester: 'fall', year: 2011, initial_bs: 11, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS498.id, semester: 'fall', year: 2011, initial_bs: 17, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},

  #FOR 2012
  #spring
  {course_id: siuCS202.id, semester: 'spring', year: 2012, initial_bs: 17, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS215.id, semester: 'spring', year: 2012, initial_bs: 29, final_bs: 27, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'spring', year: 2012, initial_bs: 11, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS306.id, semester: 'spring', year: 2012, initial_bs: 15, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS335.id, semester: 'spring', year: 2012, initial_bs: 13, final_bs: 0, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS350.id, semester: 'spring', year: 2012, initial_bs: 15, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS401.id, semester: 'spring', year: 2012, initial_bs: 6, final_bs: 6, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS404.id, semester: 'spring', year: 2012, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS410.id, semester: 'spring', year: 2012, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS440.id, semester: 'spring', year: 2012, initial_bs: 11, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS484.id, semester: 'spring', year: 2012, initial_bs: 7, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS485.id, semester: 'spring', year: 2012, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS499.id, semester: 'spring', year: 2012, initial_bs: 17, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  #fall
  {course_id: siuCS215.id, semester: 'fall', year: 2012, initial_bs: 30, final_bs: 30, initial_ba: 9, final_ba: 9, instructor_id: siuCSMehrdadNojoumian.id},
  {course_id: siuCS220.id, semester: 'fall', year: 2012, initial_bs: 11, final_bs: 11, initial_ba: 3, final_ba: 2, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS306.id, semester: 'fall', year: 2012, initial_bs: 10, final_bs: 9, initial_ba: 4, final_ba: 4, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS311.id, semester: 'fall', year: 2012, initial_bs: 18, final_bs: 16, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS330.id, semester: 'fall', year: 2012, initial_bs: 13, final_bs: 13, initial_ba: 4, final_ba: 4, instructor_id: siuCSQiangShawn.id},
  {course_id: siuCS335.id, semester: 'fall', year: 2012, initial_bs: 8, final_bs: 8, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS399.id, semester: 'fall', year: 2012, initial_bs: 11, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS408.id, semester: 'fall', year: 2012, initial_bs: 2, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS420.id, semester: 'fall', year: 2012, initial_bs: 2, final_bs: 2, initial_ba: 0, final_ba: 0, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS430.id, semester: 'fall', year: 2012, initial_bs: 13, final_bs: 13, initial_ba: 3, final_ba: 3, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS435.id, semester: 'fall', year: 2012, initial_bs: 6, final_bs: 6, initial_ba: 2, final_ba: 2, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS487.id, semester: 'fall', year: 2012, initial_bs: 12, final_bs: 11, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS498.id, semester: 'fall', year: 2012, initial_bs: 14, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},

  #FOR 2013
  #spring
  {course_id: siuCS202.id, semester: 'spring', year: 2013, initial_bs: 14, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: siuCSNamdarMogharreban.id},
  {course_id: siuCS215.id, semester: 'spring', year: 2013, initial_bs: 24, final_bs: 24, initial_ba: 6, final_ba: 6, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'spring', year: 2013, initial_bs: 18, final_bs: 18, initial_ba: 8, final_ba: 8, instructor_id: siuCSMengxiaZhu.id},
  {course_id: siuCS306.id, semester: 'spring', year: 2013, initial_bs: 11, final_bs: 11, initial_ba: 5, final_ba: 5, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS330.id, semester: 'spring', year: 2013, initial_bs: 13, final_bs: 13, initial_ba: 2, final_ba: 2, instructor_id: siuCSQiangShawn.id},
  {course_id: siuCS335.id, semester: 'spring', year: 2013, initial_bs: 17, final_bs: 17, initial_ba: 0, final_ba: 0, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS350.id, semester: 'spring', year: 2013, initial_bs: 6, final_bs: 6, initial_ba: 7, final_ba: 7, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS399.id, semester: 'spring', year: 2013, initial_bs: 15, final_bs: 15, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS404.id, semester: 'spring', year: 2013, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS410.id, semester: 'spring', year: 2013, initial_bs: 4, final_bs: 4, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS440.id, semester: 'spring', year: 2013, initial_bs: 7, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS484.id, semester: 'spring', year: 2013, initial_bs: 10, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS485.id, semester: 'spring', year: 2013, initial_bs: 10, final_bs: 10, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS499.id, semester: 'spring', year: 2013, initial_bs: 13, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  #fall
  {course_id: siuCS202.id, semester: 'fall', year: 2013, initial_bs: 17, final_bs: 17, initial_ba: 3, final_ba: 3, instructor_id: siuCSMehrdadNojoumian.id},
  {course_id: siuCS215.id, semester: 'fall', year: 2013, initial_bs: 36, final_bs: 35, initial_ba: 7, final_ba: 6, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS220.id, semester: 'fall', year: 2013, initial_bs: 11, final_bs: 10, initial_ba: 6, final_ba: 6, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS305.id, semester: 'fall', year: 2013, initial_bs: 0, final_bs: 0, initial_ba: 11, final_ba: 11, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS306.id, semester: 'fall', year: 2013, initial_bs: 11, final_bs: 10, initial_ba: 5, final_ba: 5, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS311.id, semester: 'fall', year: 2013, initial_bs: 19, final_bs: 19, initial_ba: 8, final_ba: 8, instructor_id: siuCSShahramRahimi.id},
  {course_id: siuCS320.id, semester: 'fall', year: 2013, initial_bs: 15, final_bs: 15, initial_ba: 6, final_ba: 6, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS330.id, semester: 'fall', year: 2013, initial_bs: 12, final_bs: 10, initial_ba: 9, final_ba: 8, instructor_id: siuCSQiangShawn.id},
  {course_id: siuCS399.id, semester: 'fall', year: 2013, initial_bs: 8, final_bs: 8, initial_ba: 7, final_ba: 8, instructor_id: siuCSHenryHexmoor.id},
  {course_id: siuCS408.id, semester: 'fall', year: 2013, initial_bs: 9, final_bs: 9, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS430.id, semester: 'fall', year: 2013, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS441.id, semester: 'fall', year: 2013, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS455.id, semester: 'fall', year: 2013, initial_bs: 6, final_bs: 5, initial_ba: 0, final_ba: 0, instructor_id: siuCSQiangShawn.id},
  {course_id: siuCS487.id, semester: 'fall', year: 2013, initial_bs: 8, final_bs: 7, initial_ba: 0, final_ba: 0, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS498.id, semester: 'fall', year: 2013, initial_bs: 14, final_bs: 13, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},

  #FOR 2014
  #spring
  {course_id: siuCS202.id, semester: 'spring', year: 2014, initial_bs: 23, final_bs: 21, initial_ba: 0, final_ba: 0, instructor_id: siuCSBillCheng.id},
  {course_id: siuCS215.id, semester: 'spring', year: 2014, initial_bs: 18, final_bs: 18, initial_ba: 6, final_ba: 6, instructor_id: siuCSMehrdadNojoumian.id},
  {course_id: siuCS220.id, semester: 'spring', year: 2014, initial_bs: 18, final_bs: 18, initial_ba: 0, final_ba: 0, instructor_id: siuCSBillCheng.id},
  {course_id: siuCS306.id, semester: 'spring', year: 2014, initial_bs: 6, final_bs: 5, initial_ba: 10, final_ba: 6, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS320.id, semester: 'spring', year: 2014, initial_bs: 13, final_bs: 13, initial_ba: 6, final_ba: 6, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS335.id, semester: 'spring', year: 2014, initial_bs: 9, final_bs: 9, initial_ba: 5, final_ba: 5, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS350.id, semester: 'spring', year: 2014, initial_bs: 0, final_bs: 0, initial_ba: 6, final_ba: 6, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS410.id, semester: 'spring', year: 2014, initial_bs: 4, final_bs: 4, initial_ba: 7, final_ba: 7, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS435.id, semester: 'spring', year: 2014, initial_bs: 14, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: siuCSKemalAkkaya.id},
  {course_id: siuCS440.id, semester: 'spring', year: 2014, initial_bs: 3, final_bs: 3, initial_ba: 2, final_ba: 2, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS484.id, semester: 'spring', year: 2014, initial_bs: 7, final_bs: 6, initial_ba: 6, final_ba: 6, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS485.id, semester: 'spring', year: 2014, initial_bs: 5, final_bs: 4, initial_ba: 5, final_ba: 4, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS499.id, semester: 'spring', year: 2014, initial_bs: 12, final_bs: 12, initial_ba: 0, final_ba: 0, instructor_id: siuCSShahramRahimi.id},
  #fall
  {course_id: siuCS202.id, semester: 'fall', year: 2014, initial_bs: 27, final_bs: 26, initial_ba: 0, final_ba: 0, instructor_id: siuCSBillCheng.id},
  {course_id: siuCS215.id, semester: 'fall', year: 2014, initial_bs: 25, final_bs: 25, initial_ba: 1, final_ba: 1, instructor_id: siuCSMehrdadNojoumian.id},
  {course_id: siuCS220.id, semester: 'fall', year: 2014, initial_bs: 11, final_bs: 11, initial_ba: 6, final_ba: 6, instructor_id: siuCSJustinSelgrad.id},
  {course_id: siuCS221.id, semester: 'fall', year: 2014, initial_bs: 31, final_bs: 31, initial_ba: 11, final_ba: 11, instructor_id: siuCSNickRahimi.id},
  {course_id: siuCS305.id, semester: 'fall', year: 2014, initial_bs: 7, final_bs: 6, initial_ba: 8, final_ba: 8, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS306.id, semester: 'fall', year: 2014, initial_bs: 8, final_bs: 4, initial_ba: 4, final_ba: 4, instructor_id: siuCSNormanCarver.id},
  {course_id: siuCS311.id, semester: 'fall', year: 2014, initial_bs: 11, final_bs: 11, initial_ba: 3, final_ba: 3, instructor_id: siuCSAdilIbrahim.id},
  {course_id: siuCS330.id, semester: 'fall', year: 2014, initial_bs: 15, final_bs: 13, initial_ba: 11, final_ba: 11, instructor_id: siuCSWen_ChiHou.id},
  {course_id: siuCS335.id, semester: 'fall', year: 2014, initial_bs: 10, final_bs: 10, initial_ba: 4, final_ba: 4, instructor_id: siuCSAdilIbrahim.id},
  {course_id: siuCS408.id, semester: 'fall', year: 2014, initial_bs: 4, final_bs: 3, initial_ba: 0, final_ba: 0, instructor_id: siuCSBidyutGupta.id},
  {course_id: siuCS412.id, semester: 'fall', year: 2014, initial_bs: 0, final_bs: 0, initial_ba: 3, final_ba: 3, instructor_id: siuCSNickRahimi.id},
  {course_id: siuCS430.id, semester: 'fall', year: 2014, initial_bs: 5, final_bs: 5, initial_ba: 7, final_ba: 7, instructor_id: siuCSDunrenChe.id},
  {course_id: siuCS437.id, semester: 'fall', year: 2014, initial_bs: 0, final_bs: 0, initial_ba: 0, final_ba: 0, instructor_id: siuCSMingxuanSun.id},
  {course_id: siuCS487.id, semester: 'fall', year: 2014, initial_bs: 5, final_bs: 5, initial_ba: 3, final_ba: 3, instructor_id: siuCSMichaelWainer.id},
  {course_id: siuCS498.id, semester: 'fall', year: 2014, initial_bs: 14, final_bs: 14, initial_ba: 0, final_ba: 0, instructor_id: siuCSJustinSelgrad.id}
]


#Scores:
Score.create [
  #FOR 2010
  # =>spring
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.08},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.03},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.13},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.188},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.065},
  # =>320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2010).id, outcome_id: o10.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.66},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.16},
  # =>330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.08},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.26},
  # =>350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.29},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.31},
  # =>399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2010).id, outcome_id: o10.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2010).id, outcome_id: o7.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.65},
  # =>404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>416
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS416.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS416.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS416.id,'spring',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS416.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.84},
  # =>485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>fall
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 4.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 2.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 2.86},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 2.78},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 2.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.45},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.45},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.06},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.35},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.4},
  # =>420
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.1},
  # =>430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.6},
  # =>435
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.5},
  # =>437
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 2.78},
  # =>441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.77},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o7.id, degree_type: 'BS', score: 3.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o2.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id, outcome_id: o1.id, degree_type: 'BS', score: 3.03},
  # =>498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o4.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o9.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o6.id, degree_type: 'BS', score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o5.id, degree_type: 'BS', score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o3.id, degree_type: 'BS', score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o7.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id, outcome_id: o8.id, degree_type: 'BS', score: 3.06},

  #FOR 2011
  # =>spring
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 1.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 2.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 2.86},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 2.1},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.12},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2011).id, outcome_id: o10.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.06},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.4},
  # =>350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  # =>410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o7.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.4},
  # =>440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 2.95},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.64},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 2.8},
  # =>485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.28},
  # =>499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o7.id, degree_type: 'BS', score: 3.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.68},
  # =>fall
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.37},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.37},
  # =>320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2011).id, outcome_id: o10.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.1},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 2.8},
  # =>399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2011).id, outcome_id: o10.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2011).id, outcome_id: o7.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.5},
  # =>408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.25},
  # =>420
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.4},
  # =>430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.42},
  # =>437
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 2.9},
  # =>441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.25},
  # =>487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.46},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o7.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o2.id, degree_type: 'BS', score: 3.39},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id, outcome_id: o1.id, degree_type: 'BS', score: 3.28},
  # =>498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o4.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o9.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o6.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o5.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o3.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o7.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id, outcome_id: o8.id, degree_type: 'BS', score: 3.34},

  #FOR 2012
  # =>spring
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.4},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.05},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.5},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 2.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 2.86},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.29},
  # =>350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.43},
  # =>401
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS401.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS401.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS401.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.7},
  # =>404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2012).id, outcome_id: o7.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 4.0},
  # =>410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o7.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.74},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.35},
  # =>485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.08},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.28},
  # =>499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o7.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o10.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.35},
  # =>fall
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BA', score: 2.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BA', score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BA', score: 2.66},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BA', score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 2.66},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 2.27},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 2.74},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 2.74},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 2.82},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BA', score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BA', score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 2.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.25},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.47},
  # =>330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BA', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o7.id, degree_type: 'BA', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BA', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.22},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.23},
  # =>399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2012).id, outcome_id: o9.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 4.0},
  # =>408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 4.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 4.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.58},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.5},
  # =>420
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BA', score: 3.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BA', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.64},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.51},
  # =>435
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BA', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BA', score: 2.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.3},
  # =>487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.69},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.76},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o7.id, degree_type: 'BS', score: 3.69},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o2.id, degree_type: 'BS', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id, outcome_id: o1.id, degree_type: 'BS', score: 3.61},
  # =>498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o4.id, degree_type: 'BS', score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o6.id, degree_type: 'BS', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o5.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o3.id, degree_type: 'BS', score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o7.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id, outcome_id: o8.id, degree_type: 'BS', score: 3.41},

  #FOR 2013
  # =>spring
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 2.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 2.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 2.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.55},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o8.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 2.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.05},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.5},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.27},
  # =>330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o7.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.14},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.18},
  # =>350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.33},
  # =>399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2013).id, outcome_id: o9.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 4.0},
  # =>404
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 4.0},
  # =>410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.8},
  # =>484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.71},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.31},
  # =>485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.66},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.43},
  # =>499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o9.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id, outcome_id: o10.id, degree_type: 'BS', score: 3.62},
  # =>fall
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 2.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.34},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BA', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.81},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.05},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 1.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 1.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 2.5},
  # =>305
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BA', score: 3.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 2.98},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BA', score: 3.38},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BA', score: 2.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 2.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 2.9},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BA', score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.17},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.22},
  # =>320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BA', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BA', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.3},
  # =>330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BA', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.47},
  # =>399
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o9.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BA', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BA', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o9.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 4.0},
  # =>408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.28},
  # =>430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.18},
  # =>441
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 2.88},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.15},
  # =>455
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 2.19},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 1.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 2.1},
  # =>487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.83},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o2.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o8.id, degree_type: 'BS', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id, outcome_id: o1.id, degree_type: 'BS', score: 3.74},
  # =>498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o4.id, degree_type: 'BS', score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o9.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o6.id, degree_type: 'BS', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o5.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o3.id, degree_type: 'BS', score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id, outcome_id: o7.id, degree_type: 'BS', score: 3.21},

  #FOR 2014
  # =>spring
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.11},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.51},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.43},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.43},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.12},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.96},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 2.26},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.94},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.86},
  # =>320
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.2},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.2},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.14},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.18},
  # =>350
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.43},
  # =>410
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o7.id, degree_type: 'BA', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.12},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.16},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o7.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.12},
  # =>435
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.37},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o8.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.63},
  # =>440
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.48},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.9},
  # =>484
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.29},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.79},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o8.id, degree_type: 'BA', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.34},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.52},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.45},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.28},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o8.id, degree_type: 'BS', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.85},
  # =>485
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.09},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 2.81},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.61},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.92},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.72},
  # =>499
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o9.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.55},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o7.id, degree_type: 'BS', score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o10.id, degree_type: 'BS', score: 3.35},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.55},
  # =>fall
  # =>202
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.15},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.11},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.11},
  # =>215
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.91},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.91},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.85},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.72},
  # =>220
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.32},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.63},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.03},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.18},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.09},
  # =>221
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.72},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.72},
  # =>305
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.31},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.62},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.01},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o8.id, degree_type: 'BA', score: 3.38},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.65},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.22},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.05},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id, outcome_id: o8.id, degree_type: 'BS', score: 3.41},
  # =>306
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.75},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.25},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.13},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.0},
  # =>311
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.3},
  # =>330
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 2.8},
  # =>335
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.4},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.5},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 4.0},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.78},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.74},
  # =>408
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.49},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.49},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.01},
  # =>412
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.21},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.24},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.42},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.37},
  # =>430
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 2.73},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.53},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 2.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.06},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.07},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 2.98},
  # =>437
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BA', score: 3.41},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.7},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 3.44},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.36},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.23},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 2.97},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.1},
  # =>487
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BA', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BA', score: 3.84},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BA', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o7.id, degree_type: 'BA', score: 3.47},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BA', score: 2.69},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o8.id, degree_type: 'BA', score: 3.57},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BA', score: 2.33},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.67},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.74},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o7.id, degree_type: 'BS', score: 3.56},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o2.id, degree_type: 'BS', score: 3.68},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o8.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id, outcome_id: o1.id, degree_type: 'BS', score: 3.42},
  # =>498
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o4.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o9.id, degree_type: 'BS', score: 3.6},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o6.id, degree_type: 'BS', score: 3.8},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o5.id, degree_type: 'BS', score: 3.3},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o3.id, degree_type: 'BS', score: 3.1},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o7.id, degree_type: 'BS', score: 3.9},
  {scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id, outcome_id: o8.id, degree_type: 'BS', score: 3.7}
]


#Grades:
GradeCount.create [
  #FOR 2010
  # =>spring
  # =>215
  {a: 3, b: 2, c: 1, d: 2, f: 4, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2010).id},
  # =>220
  {a: 6, b: 6, c: 7, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2010).id},
  # =>311
  {a: 5, b: 3, c: 2, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'spring',2010).id},
  # =>320
  {a: 9, b: 4, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2010).id},
  # =>330
  {a: 5, b: 4, c: 1, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2010).id},
  # =>335
  {a: 6, b: 0, c: 0, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2010).id},
  # =>350
  {a: 3, b: 2, c: 4, d: 2, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2010).id},
  # =>399
  {a: 8, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2010).id},
  # =>404
  {a: 2, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2010).id},
  # =>416
  {a: 4, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS416.id,'spring',2010).id},
  # =>440
  {a: 4, b: 6, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2010).id},
  # =>484
  {a: 1, b: 5, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2010).id},
  # =>485
  {a: 2, b: 1, c: 4, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2010).id},
  # =>fall
  # =>202
  {a: 7, b: 12, c: 5, d: 4, f: 2, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2010).id},
  # =>215
  {a: 5, b: 2, c: 4, d: 2, f: 4, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2010).id},
  # =>220
  {a: 4, b: 4, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2010).id},
  # =>306
  {a: 3, b: 8, c: 3, d: 0, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2010).id},
  # =>311
  {a: 7, b: 5, c: 1, d: 2, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2010).id},
  # =>335
  {a: 10, b: 2, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2010).id},
  # =>420
  {a: 1, b: 4, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2010).id},
  # =>430
  {a: 1, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2010).id},
  # =>435
  {a: 1, b: 1, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2010).id},
  # =>437
  {a: 3, b: 1, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2010).id},
  # =>441
  {a: 2, b: 2, c: 1, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2010).id},
  # =>487
  {a: 2, b: 1, c: 2, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2010).id},
  # =>498
  {a: 7, b: 2, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2010).id},

  #FOR 2011
  # =>spring
  # =>202
  {a: 8, b: 14, c: 8, d: 2, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2011).id},
  # =>215
  {a: 2, b: 2, c: 2, d: 4, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2011).id},
  # =>220
  {a: 4, b: 1, c: 3, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2011).id},
  # =>320
  {a: 10, b: 7, c: 2, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2011).id},
  # =>335
  {a: 5, b: 3, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2011).id},
  # =>350
  {a: 2, b: 0, c: 1, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2011).id},
  # =>410
  {a: 6, b: 4, c: 5, d: 4, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2011).id},
  # =>440
  {a: 5, b: 3, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2011).id},
  # =>484
  {a: 1, b: 4, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2011).id},
  # =>485
  {a: 2, b: 2, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2011).id},
  # =>499
  {a: 9, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2011).id},
  # =>fall
  # =>215
  {a: 6, b: 10, c: 4, d: 4, f: 2, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2011).id},
  # =>220
  {a: 5, b: 3, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2011).id},
  # =>311
  {a: 13, b: 4, c: 3, d: 3, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2011).id},
  # =>320
  {a: 7, b: 6, c: 4, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2011).id},
  # =>335
  {a: 2, b: 1, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2011).id},
  # =>399
  {a: 11, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2011).id},
  # =>408
  {a: 7, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2011).id},
  # =>420
  {a: 1, b: 4, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2011).id},
  # =>430
  {a: 3, b: 4, c: 1, d: 1, f: 4, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2011).id},
  # =>437
  {a: 2, b: 1, c: 1, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2011).id},
  # =>441
  {a: 0, b: 3, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2011).id},
  # =>487
  {a: 2, b: 4, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2011).id},
  # =>498
  {a: 16, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2011).id},

  #FOR 2012
  # =>spring
  # =>202
  {a: 7, b: 3, c: 1, d: 2, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2012).id},
  # =>215
  {a: 2, b: 7, c: 7, d: 5, f: 6, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2012).id},
  # =>220
  {a: 5, b: 5, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2012).id},
  # =>306
  {a: 1, b: 5, c: 6, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2012).id},
  # =>335
  {a: 8, b: 2, c: 2, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2012).id},
  # =>350
  {a: 4, b: 2, c: 4, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2012).id},
  # =>401
  {a: 3, b: 2, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS401.id,'spring',2012).id},
  # =>404
  {a: 13, b: 0, c: 0, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2012).id},
  # =>410
  {a: 4, b: 1, c: 0, d: 1, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2012).id},
  # =>440
  {a: 8, b: 2, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2012).id},
  # =>484
  {a: 4, b: 2, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2012).id},
  # =>485
  {a: 2, b: 0, c: 2, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2012).id},
  # =>499
  {a: 16, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2012).id},
  # =>fall
  # =>215
  {a: 2, b: 2, c: 4, d: 0, f: 1, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id},
  {a: 11, b: 4, c: 6, d: 3, f: 6, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2012).id},
  # =>220
  {a: 1, b: 0, c: 1, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id},
  {a: 2, b: 4, c: 3, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2012).id},
  # =>306
  {a: 0, b: 1, c: 2, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id},
  {a: 1, b: 6, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2012).id},
  # =>311
  {a: 10, b: 2, c: 2, d: 2, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2012).id},
  # =>330
  {a: 2, b: 2, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id},
  {a: 4, b: 6, c: 1, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2012).id},
  # =>335
  {a: 4, b: 2, c: 1, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2012).id},
  # =>399
  {a: 12, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2012).id},
  # =>408
  {a: 1, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2012).id},
  # =>420
  {a: 0, b: 1, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS420.id,'fall',2012).id},
  # =>430
  {a: 1, b: 2, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id},
  {a: 3, b: 4, c: 4, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2012).id},
  # =>435
  {a: 0, b: 2, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id},
  {a: 4, b: 2, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'fall',2012).id},
  # =>487
  {a: 4, b: 5, c: 0, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2012).id},
  # =>498
  {a: 12, b: 1, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2012).id},

  #FOR 2013
  # =>spring
  # =>202
  {a: 2, b: 5, c: 3, d: 1, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2013).id},
  # =>215
  {a: 0, b: 2, c: 0, d: 2, f: 2, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id},
  {a: 3, b: 7, c: 6, d: 2, f: 6, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2013).id},
  # =>220
  {a: 0, b: 5, c: 3, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id},
  {a: 7, b: 5, c: 1, d: 4, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2013).id},
  # =>306
  {a: 2, b: 0, c: 3, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id},
  {a: 4, b: 3, c: 3, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2013).id},
  # =>330
  {a: 1, b: 1, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id},
  {a: 4, b: 3, c: 3, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'spring',2013).id},
  # =>335
  {a: 8, b: 5, c: 3, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2013).id},
  # =>350
  {a: 0, b: 3, c: 2, d: 0, f: 1, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id},
  {a: 0, b: 3, c: 2, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2013).id},
  # =>399
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'spring',2013).id},
  # =>404
  {a: 13, b: 0, c: 0, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS404.id,'spring',2013).id},
  # =>410
  {a: 0, b: 2, c: 1, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2013).id},
  # =>440
  {a: 3, b: 3, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2013).id},
  # =>484
  {a: 4, b: 5, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2013).id},
  # =>485
  {a: 6, b: 3, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2013).id},
  # =>499
  {a: 12, b: 0, c: 0, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2013).id},
  # =>fall
  # =>202
  {a: 1, b: 0, c: 0, d: 0, f: 2, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id},
  {a: 7, b: 6, c: 1, d: 3, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2013).id},
  # =>215
  {a: 1, b: 1, c: 1, d: 1, f: 2, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id},
  {a: 6, b: 9, c: 9, d: 5, f: 5, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2013).id},
  # =>220
  {a: 1, b: 2, c: 1, d: 1, f: 1, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id},
  {a: 0, b: 0, c: 7, d: 3, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2013).id},
  # =>305
  {a: 3, b: 5, c: 2, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2013).id},
  # =>306
  {a: 0, b: 0, c: 4, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id},
  {a: 2, b: 6, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2013).id},
  # =>311
  {a: 3, b: 2, c: 3, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id},
  {a: 7, b: 11, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2013).id},
  # =>320
  {a: 2, b: 2, c: 1, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id},
  {a: 5, b: 5, c: 3, d: 0, f: 2, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'fall',2013).id},
  # =>330
  {a: 1, b: 3, c: 3, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id},
  {a: 5, b: 4, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2013).id},
  # =>399
  {a: 7, b: 0, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id},
  {a: 8, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS399.id,'fall',2013).id},
  # =>408
  {a: 6, b: 3, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2013).id},
  # =>430
  {a: 4, b: 4, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2013).id},
  # =>441
  {a: 1, b: 2, c: 3, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS441.id,'fall',2013).id},
  # =>455
  {a: 0, b: 2, c: 1, d: 1, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS455.id,'fall',2013).id},
  # =>487
  {a: 3, b: 4, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2013).id},
  # =>498
  {a: 12, b: 0, c: 0, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2013).id},

  #FOR 2014
  # =>spring
  # =>202
  {a: 5, b: 8, c: 4, d: 1, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'spring',2014).id},
  # =>215
  {a: 1, b: 1, c: 0, d: 3, f: 1, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id},
  {a: 4, b: 6, c: 4, d: 1, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'spring',2014).id},
  # =>220
  {a: 4, b: 8, c: 5, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'spring',2014).id},
  # =>306
  {a: 0, b: 3, c: 2, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id},
  {a: 0, b: 0, c: 4, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'spring',2014).id},
  # =>320
  {a: 2, b: 1, c: 2, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id},
  {a: 3, b: 4, c: 3, d: 2, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS320.id,'spring',2014).id},
  # =>335
  {a: 2, b: 1, c: 2, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id},
  {a: 5, b: 2, c: 1, d: 1, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'spring',2014).id},
  # =>350
  {a: 2, b: 2, c: 0, d: 2, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS350.id,'spring',2014).id},
  # =>410
  {a: 1, b: 3, c: 0, d: 1, f: 2, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id},
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS410.id,'spring',2014).id},
  # =>435
  {a: 3, b: 7, c: 3, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS435.id,'spring',2014).id},
  # =>440
  {a: 0, b: 1, c: 1, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id},
  {a: 2, b: 1, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS440.id,'spring',2014).id},
  # =>484
  {a: 2, b: 4, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id},
  {a: 3, b: 3, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS484.id,'spring',2014).id},
  # =>485
  {a: 1, b: 1, c: 1, d: 1, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id},
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS485.id,'spring',2014).id},
  # =>499
  {a: 12, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS499.id,'spring',2014).id},
  # =>fall
  # =>202
  {a: 15, b: 5, c: 4, d: 0, f: 2, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS202.id,'fall',2014).id},
  # =>215
  {a: 1, b: 0, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id},
  {a: 9, b: 3, c: 8, d: 2, f: 3, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS215.id,'fall',2014).id},
  # =>220
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id},
  {a: 5, b: 5, c: 1, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS220.id,'fall',2014).id},
  # =>221
  {a: 14, b: 14, c: 3, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id},
  {a: 8, b: 1, c: 2, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS221.id,'fall',2014).id},
  # =>305
  {a: 2, b: 3, c: 3, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id},
  {a: 2, b: 2, c: 2, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS305.id,'fall',2014).id},
  # =>306
  {a: 0, b: 3, c: 1, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id},
  {a: 1, b: 3, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS306.id,'fall',2014).id},
  # =>311
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id},
  {a: 3, b: 11, c: 1, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS311.id,'fall',2014).id},
  # =>330
  {a: 2, b: 6, c: 3, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id},
  {a: 8, b: 2, c: 2, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS330.id,'fall',2014).id},
  # =>335
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id},
  {a: 0, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS335.id,'fall',2014).id},
  # =>408
  {a: 1, b: 2, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS408.id,'fall',2014).id},
  # =>412
  {a: 0, b: 3, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS412.id,'fall',2014).id},
  # =>430
  {a: 1, b: 0, c: 4, d: 2, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id},
  {a: 2, b: 2, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS430.id,'fall',2014).id},
  # =>437
  {a: 2, b: 1, c: 0, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id},
  {a: 3, b: 5, c: 0, d: 0, f: 1, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS437.id,'fall',2014).id},
  # =>487
  {a: 2, b: 0, c: 1, d: 0, f: 0, degree_type: 'BA', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id},
  {a: 4, b: 0, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS487.id,'fall',2014).id},
  # =>498
  {a: 11, b: 3, c: 0, d: 0, f: 0, degree_type: 'BS', scheduled_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(siuCS498.id,'fall',2014).id}
]

puts "\nDatabase seeding complete!\n"