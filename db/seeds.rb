# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create [
  {text: "Fundamentals 1"},
  {text: "Fundamentals 2"},
  {text: "Software Studies"},
  {text: "System Studies"},
  {text: "Algorithms & Intelligence"},
  {text: "Profession"}
]

c1 = Category.find_by_text("Fundamentals 1").id
c2 = Category.find_by_text("Fundamentals 2").id
c3 = Category.find_by_text("Software Studies").id
c4 = Category.find_by_text("System Studies").id
c5 = Category.find_by_text("Algorithms & Intelligence").id
c6 = Category.find_by_text("Profession").id

Course.create [
  {number: 202, title: "Intro to Computer Science", category_id: c1},
  {number: 215, title: "Discrete Mathematics", category_id: c1},
  {number: 220, title: "Programming with Data Structures", category_id: c1},
  {number: 306, title: "Linux/UNIX Programming", category_id: c2},
  {number: 311, title: "The Theory and Implementation of Programming Languages", category_id: c2},
  {number: 320, title: "Computer Organization and Architecture", category_id: c2},
  {number: 330, title: "Intro to Design and Analysis of Algorithms", category_id: c2},
  {number: 335, title: "Operating Systems", category_id: c2},
  {number: 350, title: "Web Application Development", category_id: c3},
  {number: 399, title: "Social, Ethical and Professional Issues in Computer Science", category_id: c1},
  {number: 401, title: "Comptuer Architecture"},
  {number: 404, title: "Autonomous Mobile Robots", category_id: c5},
  {number: 408, title: "Applied Cryptography", category_id: c4},
  {number: 410, title: "Computer Security", category_id: c4},
  {number: 430, title: "Database Systems", category_id: c4},
  {number: 438, title: "Bioinformatics Algorithms"},
  {number: 440, title: "Computer Networks", category_id: c4},
  {number: 441, title: "Mobile and Wireless Computing", category_id: c4},
  {number: 455, title: "Advanced Algorithm Design and Analysis", category_id: c5},
  {number: 484, title: "User Interface Design and Development", category_id: c3},
  {number: 485, title: "Computer Graphics", category_id: c3},
  {number: 487, title: "Software Aspects of Game Development", category_id: c3},
  {number: 498, title: "Senior Project in Computer Science 1", category_id: c6},
  {number: 499, title: "Senior Project in Computer Science 2", category_id: c6}
]

c202 = Course.find_by_number(202)
c215 = Course.find_by_number(215)
c220 = Course.find_by_number(220)
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
c430 = Course.find_by_number(430)
c438 = Course.find_by_number(438)
c440 = Course.find_by_number(440)
c441 = Course.find_by_number(441)
c455 = Course.find_by_number(455)
c484 = Course.find_by_number(484)
c485 = Course.find_by_number(485)
c487 = Course.find_by_number(487)
c498 = Course.find_by_number(498)
c499 = Course.find_by_number(499)


Outcomes.create [
  {text: "O-1"},
  {text: "O-2"},
  {text: "O-3"},
  {text: "O-4"},
  {text: "O-5"},
  {text: "O-6"},
  {text: "O-7"},
  {text: "O-8"},
  {text: "O-9"},
  {text: "O-10"}
]

O1 = Outcomes.find_by_text("O-1")
O1 = Outcomes.find_by_text("O-2")
O1 = Outcomes.find_by_text("O-3")
O1 = Outcomes.find_by_text("O-4")
O1 = Outcomes.find_by_text("O-5")
O1 = Outcomes.find_by_text("O-6")
O1 = Outcomes.find_by_text("O-7")
O1 = Outcomes.find_by_text("O-8")
O1 = Outcomes.find_by_text("O-9")
O1 = Outcomes.find_by_text("O-10")

ScheduledCourse.create [
  {course_id: c202.id, semester: "spring", year: 2013},
  {course_id: c215.id, semester: "spring", year: 2013},
  {course_id: c220.id, semester: "spring", year: 2013},
  {course_id: c306.id, semester: "spring", year: 2013},
  {course_id: c330.id, semester: "spring", year: 2013},
  {course_id: c335.id, semester: "spring", year: 2013},
  {course_id: c350.id, semester: "spring", year: 2013},
  {course_id: c391.id, semester: "spring", year: 2013},
  {course_id: c399.id, semester: "spring", year: 2013},
  {course_id: c401.id, semester: "spring", year: 2013},
  {course_id: c404.id, semester: "spring", year: 2013},
  {course_id: c410.id, semester: "spring", year: 2013},
  {course_id: c438.id, semester: "spring", year: 2013},
  {course_id: c440.id, semester: "spring", year: 2013},
  {course_id: c484.id, semester: "spring", year: 2013},
  {course_id: c485.id, semester: "spring", year: 2013},
  {course_id: c499.id, semester: "spring", year: 2013},
  {course_id: c202.id, semester: "fall", year: 2013},
  {course_id: c215.id, semester: "fall", year: 2013},
  {course_id: c220.id, semester: "fall", year: 2013},
  {course_id: c306.id, semester: "fall", year: 2013},
  {course_id: c311.id, semester: "fall", year: 2013},
  {course_id: c320.id, semester: "fall", year: 2013},
  {course_id: c330.id, semester: "fall", year: 2013},
  {course_id: c399.id, semester: "fall", year: 2013},
  {course_id: c408.id, semester: "fall", year: 2013},
  {course_id: c430.id, semester: "fall", year: 2013},
  {course_id: c441.id, semester: "fall", year: 2013},
  {course_id: c455.id, semester: "fall", year: 2013},
  {course_id: c487.id, semester: "fall", year: 2013},
  {course_id: c498.id, semester: "fall", year: 2013}
]

