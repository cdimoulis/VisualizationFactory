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
  {number: 202, title: "Intro to Computer Science", category_id: cat1},
  {number: 215, title: "Discrete Mathematics", category_id: cat1},
  {number: 220, title: "Programming with Data Structures", category_id: cat1},
  {number: 305, title: "Software Development Practices"},
  {number: 306, title: "Linux/UNIX Programming", category_id: cat2},
  {number: 311, title: "The Theory and Implementation of Programming Languages", category_id: cat2},
  {number: 320, title: "Computer Organization and Architecture", category_id: cat2},
  {number: 330, title: "Intro to Design and Analysis of Algorithms", category_id: cat2},
  {number: 335, title: "Operating Systems", category_id: cat2},
  {number: 350, title: "Web Application Development", category_id: cat3},
  {number: 399, title: "Social, Ethical and Professional Issues in Computer Science", category_id: cat1},
  {number: 401, title: "Comptuer Architecture"},
  {number: 404, title: "Autonomous Mobile Robots", category_id: cat5},
  {number: 408, title: "Applied Cryptography", category_id: cat4},
  {number: 410, title: "Computer Security", category_id: cat4},
  {number: 412, title: "Programming Distributed Applications"},
  {number: 420, title: "Distributed Systems"},
  {number: 430, title: "Database Systems", category_id: cat4},
  ### This Category was an educated guess
  {number: 435, title: "Software Engineering", category_id: cat3},
  ###
  {number: 438, title: "Bioinformatics Algorithms"},
  {number: 440, title: "Computer Networks", category_id: cat4},
  {number: 441, title: "Mobile and Wireless Computing", category_id: cat4},
  {number: 455, title: "Advanced Algorithm Design and Analysis", category_id: cat5},
  {number: 484, title: "User Interface Design and Development", category_id: cat3},
  {number: 485, title: "Computer Graphics", category_id: cat3},
  {number: 487, title: "Software Aspects of Game Development", category_id: cat3},
  {number: 498, title: "Senior Project in Computer Science 1", category_id: cat6},
  {number: 499, title: "Senior Project in Computer Science 2", category_id: cat6}
]

c202 = Course.find_by_number(202)
c215 = Course.find_by_number(215)
c220 = Course.find_by_number(220)
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

o1 = Outcomes.find_by_text("O-1")
o2 = Outcomes.find_by_text("O-2")
o3 = Outcomes.find_by_text("O-3")
o4 = Outcomes.find_by_text("O-4")
o5 = Outcomes.find_by_text("O-5")
o6 = Outcomes.find_by_text("O-6")
o7 = Outcomes.find_by_text("O-7")
o8 = Outcomes.find_by_text("O-8")
o9 = Outcomes.find_by_text("O-9")
o10 = Outcomes.find_by_text("O-10")


### CURRENT REAL DATA ###
# ScheduledCourse.create [
#   # SPRING
#   {course_id: c202.id, semester: "spring", year: 2013},
#   {course_id: c215.id, semester: "spring", year: 2013},
#   {course_id: c220.id, semester: "spring", year: 2013},
#   {course_id: c306.id, semester: "spring", year: 2013},
#   {course_id: c330.id, semester: "spring", year: 2013},
#   {course_id: c335.id, semester: "spring", year: 2013},
#   {course_id: c350.id, semester: "spring", year: 2013},
#   {course_id: c399.id, semester: "spring", year: 2013},
#   {course_id: c401.id, semester: "spring", year: 2013},
#   {course_id: c404.id, semester: "spring", year: 2013},
#   {course_id: c410.id, semester: "spring", year: 2013},
#   {course_id: c438.id, semester: "spring", year: 2013},
#   {course_id: c440.id, semester: "spring", year: 2013},
#   {course_id: c484.id, semester: "spring", year: 2013},
#   {course_id: c485.id, semester: "spring", year: 2013},
#   {course_id: c499.id, semester: "spring", year: 2013},
#   # FALL
#   {course_id: c202.id, semester: "fall", year: 2013},
#   {course_id: c215.id, semester: "fall", year: 2013},
#   {course_id: c220.id, semester: "fall", year: 2013},
#   {course_id: c306.id, semester: "fall", year: 2013},
#   {course_id: c311.id, semester: "fall", year: 2013},
#   {course_id: c320.id, semester: "fall", year: 2013},
#   {course_id: c330.id, semester: "fall", year: 2013},
#   {course_id: c399.id, semester: "fall", year: 2013},
#   {course_id: c408.id, semester: "fall", year: 2013},
#   {course_id: c430.id, semester: "fall", year: 2013},
#   {course_id: c441.id, semester: "fall", year: 2013},
#   {course_id: c455.id, semester: "fall", year: 2013},
#   {course_id: c487.id, semester: "fall", year: 2013},
#   {course_id: c498.id, semester: "fall", year: 2013}
# ]


### TEST DATA (NOT REAL) ###

ScheduledCourse.create [
  # 2013
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2013, num_students: 36},
  {course_id: c215.id, semester: "spring", year: 2013, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2013, num_students: 27},
  {course_id: c306.id, semester: "spring", year: 2013, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2013, num_students: 14},
  {course_id: c335.id, semester: "spring", year: 2013, num_students: 18},
  {course_id: c350.id, semester: "spring", year: 2013, num_students: 14},
  {course_id: c399.id, semester: "spring", year: 2013, num_students: 11},
  {course_id: c401.id, semester: "spring", year: 2013, num_students: 15},
  {course_id: c404.id, semester: "spring", year: 2013, num_students: 30},
  {course_id: c410.id, semester: "spring", year: 2013, num_students: 7},
  {course_id: c438.id, semester: "spring", year: 2013, num_students: 3},
  {course_id: c440.id, semester: "spring", year: 2013, num_students: 24},
  {course_id: c484.id, semester: "spring", year: 2013, num_students: 12},
  {course_id: c485.id, semester: "spring", year: 2013, num_students: 13},
  {course_id: c499.id, semester: "spring", year: 2013, num_students: 13},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2013, num_students: 48},
  {course_id: c215.id, semester: "fall", year: 2013, num_students: 43},
  {course_id: c220.id, semester: "fall", year: 2013, num_students: 19},
  {course_id: c306.id, semester: "fall", year: 2013, num_students: 23},
  {course_id: c311.id, semester: "fall", year: 2013, num_students: 27},
  {course_id: c320.id, semester: "fall", year: 2013, num_students: 23},
  {course_id: c330.id, semester: "fall", year: 2013, num_students: 21},
  {course_id: c399.id, semester: "fall", year: 2013, num_students: 15},
  {course_id: c408.id, semester: "fall", year: 2013, num_students: 31},
  {course_id: c430.id, semester: "fall", year: 2013, num_students: 34},
  {course_id: c441.id, semester: "fall", year: 2013, num_students: 20},
  {course_id: c455.id, semester: "fall", year: 2013, num_students: 58},
  {course_id: c487.id, semester: "fall", year: 2013, num_students: 10},
  {course_id: c498.id, semester: "fall", year: 2013, num_students: 14},

  # 2012
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2012, num_students: 52},
  {course_id: c215.id, semester: "spring", year: 2012, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2012, num_students: 19},
  {course_id: c306.id, semester: "spring", year: 2012, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2012, num_students: 15},
  {course_id: c335.id, semester: "spring", year: 2012, num_students: 15},
  {course_id: c350.id, semester: "spring", year: 2012, num_students: 15},
  {course_id: c401.id, semester: "spring", year: 2012, num_students: 22},
  {course_id: c404.id, semester: "spring", year: 2012, num_students: 32},
  {course_id: c410.id, semester: "spring", year: 2012, num_students: 11},
  {course_id: c438.id, semester: "spring", year: 2012, num_students: 5},
  {course_id: c440.id, semester: "spring", year: 2012, num_students: 27},
  {course_id: c484.id, semester: "spring", year: 2012, num_students: 14},
  {course_id: c485.id, semester: "spring", year: 2012, num_students: 7},
  {course_id: c499.id, semester: "spring", year: 2012, num_students: 17},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2012, num_students: 58},
  {course_id: c215.id, semester: "fall", year: 2012, num_students: 39},
  {course_id: c220.id, semester: "fall", year: 2012, num_students: 23},
  {course_id: c306.id, semester: "fall", year: 2012, num_students: 17},
  {course_id: c311.id, semester: "fall", year: 2012, num_students: 21},
  {course_id: c320.id, semester: "fall", year: 2012, num_students: 14},
  {course_id: c330.id, semester: "fall", year: 2012, num_students: 17},
  {course_id: c335.id, semester: "fall", year: 2012, num_students: 9},
  {course_id: c399.id, semester: "fall", year: 2012, num_students: 21},
  {course_id: c408.id, semester: "fall", year: 2012, num_students: 10},
  {course_id: c420.id, semester: "fall", year: 2012, num_students: 29},
  {course_id: c430.id, semester: "fall", year: 2012, num_students: 21},
  {course_id: c435.id, semester: "fall", year: 2012, num_students: 11},
  {course_id: c455.id, semester: "fall", year: 2012, num_students: 33},
  {course_id: c487.id, semester: "fall", year: 2012, num_students: 13},
  {course_id: c498.id, semester: "fall", year: 2012, num_students: 14},

  # 2011
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2011, num_students: 36},
  {course_id: c215.id, semester: "spring", year: 2011, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2011, num_students: 27},
  {course_id: c306.id, semester: "spring", year: 2011, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2011, num_students: 14},
  {course_id: c335.id, semester: "spring", year: 2011, num_students: 18},
  {course_id: c350.id, semester: "spring", year: 2011, num_students: 14},
  {course_id: c399.id, semester: "spring", year: 2011, num_students: 11},
  {course_id: c401.id, semester: "spring", year: 2011, num_students: 15},
  {course_id: c404.id, semester: "spring", year: 2011, num_students: 30},
  {course_id: c410.id, semester: "spring", year: 2011, num_students: 7},
  {course_id: c438.id, semester: "spring", year: 2011, num_students: 3},
  {course_id: c440.id, semester: "spring", year: 2011, num_students: 24},
  {course_id: c484.id, semester: "spring", year: 2011, num_students: 12},
  {course_id: c485.id, semester: "spring", year: 2011, num_students: 13},
  {course_id: c499.id, semester: "spring", year: 2011, num_students: 13},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2011, num_students: 48},
  {course_id: c215.id, semester: "fall", year: 2011, num_students: 43},
  {course_id: c220.id, semester: "fall", year: 2011, num_students: 19},
  {course_id: c306.id, semester: "fall", year: 2011, num_students: 23},
  {course_id: c311.id, semester: "fall", year: 2011, num_students: 27},
  {course_id: c320.id, semester: "fall", year: 2011, num_students: 23},
  {course_id: c330.id, semester: "fall", year: 2011, num_students: 21},
  {course_id: c399.id, semester: "fall", year: 2011, num_students: 15},
  {course_id: c408.id, semester: "fall", year: 2011, num_students: 31},
  {course_id: c441.id, semester: "fall", year: 2011, num_students: 20},
  {course_id: c430.id, semester: "fall", year: 2011, num_students: 34},
  {course_id: c441.id, semester: "fall", year: 2011, num_students: 20},
  {course_id: c455.id, semester: "fall", year: 2011, num_students: 58},
  {course_id: c487.id, semester: "fall", year: 2011, num_students: 10},
  {course_id: c498.id, semester: "fall", year: 2011, num_students: 14},

  # 2010
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2010, num_students: 52},
  {course_id: c215.id, semester: "spring", year: 2010, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2010, num_students: 19},
  {course_id: c306.id, semester: "spring", year: 2010, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2010, num_students: 15},
  {course_id: c335.id, semester: "spring", year: 2010, num_students: 15},
  {course_id: c350.id, semester: "spring", year: 2010, num_students: 15},
  {course_id: c401.id, semester: "spring", year: 2010, num_students: 22},
  {course_id: c404.id, semester: "spring", year: 2010, num_students: 32},
  {course_id: c410.id, semester: "spring", year: 2010, num_students: 11},
  {course_id: c438.id, semester: "spring", year: 2010, num_students: 5},
  {course_id: c440.id, semester: "spring", year: 2010, num_students: 27},
  {course_id: c484.id, semester: "spring", year: 2010, num_students: 14},
  {course_id: c485.id, semester: "spring", year: 2010, num_students: 7},
  {course_id: c499.id, semester: "spring", year: 2010, num_students: 17},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2010, num_students: 58},
  {course_id: c215.id, semester: "fall", year: 2010, num_students: 39},
  {course_id: c220.id, semester: "fall", year: 2010, num_students: 23},
  {course_id: c306.id, semester: "fall", year: 2010, num_students: 17},
  {course_id: c311.id, semester: "fall", year: 2010, num_students: 21},
  {course_id: c320.id, semester: "fall", year: 2010, num_students: 14},
  {course_id: c330.id, semester: "fall", year: 2010, num_students: 17},
  {course_id: c335.id, semester: "fall", year: 2010, num_students: 9},
  {course_id: c399.id, semester: "fall", year: 2010, num_students: 21},
  {course_id: c408.id, semester: "fall", year: 2010, num_students: 10},
  {course_id: c441.id, semester: "fall", year: 2010, num_students: 20},
  {course_id: c420.id, semester: "fall", year: 2010, num_students: 29},
  {course_id: c430.id, semester: "fall", year: 2010, num_students: 21},
  {course_id: c435.id, semester: "fall", year: 2010, num_students: 11},
  {course_id: c455.id, semester: "fall", year: 2010, num_students: 33},
  {course_id: c487.id, semester: "fall", year: 2010, num_students: 13},
  {course_id: c498.id, semester: "fall", year: 2010, num_students: 14},

  # 2009
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2009, num_students: 36},
  {course_id: c215.id, semester: "spring", year: 2009, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2009, num_students: 27},
  {course_id: c306.id, semester: "spring", year: 2009, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2009, num_students: 14},
  {course_id: c335.id, semester: "spring", year: 2009, num_students: 18},
  {course_id: c350.id, semester: "spring", year: 2009, num_students: 14},
  {course_id: c399.id, semester: "spring", year: 2009, num_students: 11},
  {course_id: c401.id, semester: "spring", year: 2009, num_students: 15},
  {course_id: c404.id, semester: "spring", year: 2009, num_students: 30},
  {course_id: c410.id, semester: "spring", year: 2009, num_students: 7},
  {course_id: c438.id, semester: "spring", year: 2009, num_students: 3},
  {course_id: c440.id, semester: "spring", year: 2009, num_students: 24},
  {course_id: c484.id, semester: "spring", year: 2009, num_students: 12},
  {course_id: c485.id, semester: "spring", year: 2009, num_students: 13},
  {course_id: c499.id, semester: "spring", year: 2009, num_students: 13},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2009, num_students: 48},
  {course_id: c215.id, semester: "fall", year: 2009, num_students: 43},
  {course_id: c220.id, semester: "fall", year: 2009, num_students: 19},
  {course_id: c306.id, semester: "fall", year: 2009, num_students: 23},
  {course_id: c311.id, semester: "fall", year: 2009, num_students: 27},
  {course_id: c320.id, semester: "fall", year: 2009, num_students: 23},
  {course_id: c330.id, semester: "fall", year: 2009, num_students: 21},
  {course_id: c399.id, semester: "fall", year: 2009, num_students: 15},
  {course_id: c408.id, semester: "fall", year: 2009, num_students: 31},
  {course_id: c441.id, semester: "fall", year: 2009, num_students: 20},
  {course_id: c430.id, semester: "fall", year: 2009, num_students: 34},
  {course_id: c441.id, semester: "fall", year: 2009, num_students: 20},
  {course_id: c455.id, semester: "fall", year: 2009, num_students: 58},
  {course_id: c487.id, semester: "fall", year: 2009, num_students: 10},
  {course_id: c498.id, semester: "fall", year: 2009, num_students: 14},

  # 2008
  # SPRING
  {course_id: c202.id, semester: "spring", year: 2008, num_students: 52},
  {course_id: c215.id, semester: "spring", year: 2008, num_students: 30},
  {course_id: c220.id, semester: "spring", year: 2008, num_students: 19},
  {course_id: c306.id, semester: "spring", year: 2008, num_students: 26},
  {course_id: c330.id, semester: "spring", year: 2008, num_students: 15},
  {course_id: c335.id, semester: "spring", year: 2008, num_students: 15},
  {course_id: c350.id, semester: "spring", year: 2008, num_students: 15},
  {course_id: c401.id, semester: "spring", year: 2008, num_students: 22},
  {course_id: c404.id, semester: "spring", year: 2008, num_students: 32},
  {course_id: c410.id, semester: "spring", year: 2008, num_students: 11},
  {course_id: c438.id, semester: "spring", year: 2008, num_students: 5},
  {course_id: c440.id, semester: "spring", year: 2008, num_students: 27},
  {course_id: c484.id, semester: "spring", year: 2008, num_students: 14},
  {course_id: c485.id, semester: "spring", year: 2008, num_students: 7},
  {course_id: c499.id, semester: "spring", year: 2008, num_students: 17},
  # FALL
  {course_id: c202.id, semester: "fall", year: 2008, num_students: 58},
  {course_id: c215.id, semester: "fall", year: 2008, num_students: 39},
  {course_id: c220.id, semester: "fall", year: 2008, num_students: 23},
  {course_id: c306.id, semester: "fall", year: 2008, num_students: 17},
  {course_id: c311.id, semester: "fall", year: 2008, num_students: 21},
  {course_id: c320.id, semester: "fall", year: 2008, num_students: 14},
  {course_id: c330.id, semester: "fall", year: 2008, num_students: 17},
  {course_id: c335.id, semester: "fall", year: 2008, num_students: 9},
  {course_id: c399.id, semester: "fall", year: 2008, num_students: 21},
  {course_id: c408.id, semester: "fall", year: 2008, num_students: 10},
  {course_id: c441.id, semester: "fall", year: 2008, num_students: 20},
  {course_id: c420.id, semester: "fall", year: 2008, num_students: 29},
  {course_id: c430.id, semester: "fall", year: 2008, num_students: 21},
  {course_id: c435.id, semester: "fall", year: 2008, num_students: 11},
  {course_id: c455.id, semester: "fall", year: 2008, num_students: 33},
  {course_id: c487.id, semester: "fall", year: 2008, num_students: 13},
  {course_id: c498.id, semester: "fall", year: 2008, num_students: 14}
]





Score.create [
  ### REAL DATA ###
  # => FALL 2013
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o1.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o2.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o3.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o4.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o5.id, score: 3.38},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o1.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o3.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o6.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o8.id, score: 3.2},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o1.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o2.id, score: 1.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o3.id, score: 1.55},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2013).id, outcome_id: o5.id, score: 3.2},
  # => CS 311
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o1.id, score: 3.22},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o2.id, score: 3.19},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o3.id, score: 3.17},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o4.id, score: 3.32},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2013).id, outcome_id: o5.id, score: 3.15},
  # => CS 320
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o1.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2013).id, outcome_id: o3.id, score: 3.6},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o1.id, score: 3.47},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2013).id, outcome_id: o4.id, score: 3.33},
  # => CS 399
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o1.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o8.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c399.id, "fall", 2013).id, outcome_id: o9.id, score: 3},
  # 400
  # => CS 408
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o1.id, score: 3.22},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o2.id, score: 3.58},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o3.id, score: 3.78},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o4.id, score: 3.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o5.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2013).id, outcome_id: o6.id, score: 3},
  # => CS 430
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o2.id, score: 3.15},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o3.id, score: 3.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2013).id, outcome_id: o5.id, score: 3.18},
  # => CS 441
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o1.id, score: 3.15},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o2.id, score: 2.88},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o4.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o5.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o6.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2013).id, outcome_id: o8.id, score: 3.38},
  # => CS 455
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o1.id, score: 2.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o2.id, score: 1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o3.id, score: 2.75},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o4.id, score: 2.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o5.id, score: 2.19},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o6.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o8.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2013).id, outcome_id: o9.id, score: 1.38},
  # => CS 487
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o1.id, score: 3.74},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o2.id, score: 3.35},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o3.id, score: 3.83},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o4.id, score: 3.57},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o5.id, score: 3.84},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o7.id, score: 3.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2013).id, outcome_id: o8.id, score: 3.48},
  # => CS 498
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o3.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o4.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o5.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o6.id, score: 3.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o7.id, score: 3.21},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o8.id, score: 3.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o9.id, score: 3.21},

  # => Spring 2013
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o1.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o2.id, score: 2.96},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o3.id, score: 2.65},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o6.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o8.id, score: 4},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o1.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o3.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o4.id, score: 3.7},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o1.id, score: 3.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o3.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2013).id, outcome_id: o5.id, score: 3.45},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o1.id, score: 3.14},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o3.id, score: 2.83},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2013).id, outcome_id: o4.id, score: 3.11},
  # => CS 335
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o1.id, score: 3.18},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o2.id, score: 3.19},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2013).id, outcome_id: o3.id, score: 3.19},
  # => CS 350
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2013).id, outcome_id: o2.id, score: 3.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2013).id, outcome_id: o3.id, score: 3.42},
  # 400
  # => CS 404
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o1.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o3.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2013).id, outcome_id: o7.id, score: 3.6},
  # => CS 410
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o3.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o5.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2013).id, outcome_id: o7.id, score: 3.12},
  # => CS 440
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o1.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o2.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o3.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o4.id, score: 3.44},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o5.id, score: 3.71},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2013).id, outcome_id: o6.id, score: 3.2},
  # => CS 484
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o1.id, score: 3.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o2.id, score: 3.26},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o3.id, score: 3.71},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o4.id, score: 3.57},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o5.id, score: 3.44},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o6.id, score: 3.11},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2013).id, outcome_id: o8.id, score: 3.51},
  # => CS 485
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o1.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o2.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o3.id, score: 3.66},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o4.id, score: 3.68},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o5.id, score: 3.72},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2013).id, outcome_id: o6.id, score: 3.6},
  # => CS 499
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o3.id, score: 3.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o4.id, score: 3.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o5.id, score: 3.22},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o6.id, score: 3.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o7.id, score: 3.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2013).id, outcome_id: o8.id, score: 3.62},




  ### TEST DATA (NOT REAL) ###
  # => FALL 2012
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o1.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o2.id, score: 2.76},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o4.id, score: 2.45},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2012).id, outcome_id: o5.id, score: 2.9},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o1.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o2.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o3.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o6.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2012).id, outcome_id: o8.id, score: 3},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o1.id, score: 2.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o2.id, score: 1.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2012).id, outcome_id: o3.id, score: 1.75},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o1.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o2.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o3.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2012).id, outcome_id: o5.id, score: 3},
  # => CS 311
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o2.id, score: 3.07},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o4.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2012).id, outcome_id: o5.id, score: 3.2},
  # => CS 320
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o1.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o2.id, score: 3.16},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o3.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2012).id, outcome_id: o4.id, score: 3},
  # 400
  # => CS 408
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o1.id, score: 3.42},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o2.id, score: 3.08},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o3.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o4.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o5.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2012).id, outcome_id: o6.id, score: 3.31},
  # => CS 430
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o3.id, score: 3.32},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2012).id, outcome_id: o5.id, score: 3.12},
  # => CS 455
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o1.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o2.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o3.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o4.id, score: 2.75},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o5.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o6.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o8.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2012).id, outcome_id: o9.id, score: 2.38},
  # => CS 487
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o3.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o4.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o5.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o7.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2012).id, outcome_id: o8.id, score: 3.8},
  # => CS 498
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o3.id, score: 3.28},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o4.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o5.id, score: 3.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o6.id, score: 3.39},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o7.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o8.id, score: 3.19},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2012).id, outcome_id: o9.id, score: 3.35},

  # BAD 400 LEVEL STUDENTS
  # => Spring 2012
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o1.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o2.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o3.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o4.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o1.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o3.id, score: 3.04},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o6.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o1.id, score: 3.15},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o2.id, score: 3.15},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o3.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2012).id, outcome_id: o4.id, score: 3.03},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o2.id, score: 3.17},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o3.id, score: 3.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2012).id, outcome_id: o5.id, score: 3.61},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o1.id, score: 2.89},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o2.id, score: 3.16},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o3.id, score: 3.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2012).id, outcome_id: o4.id, score: 3.07},
  # => CS 335
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o1.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2012).id, outcome_id: o3.id, score: 3.12},
  # => CS 350
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2012).id, outcome_id: o2.id, score: 3.42},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2012).id, outcome_id: o3.id, score: 3.25},
  # 400
  # => CS 404
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o1.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2012).id, outcome_id: o7.id, score: 3.07},
  # => CS 410
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o1.id, score: 2.88},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o2.id, score: 2.78},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o5.id, score: 2.95},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2012).id, outcome_id: o7.id, score: 3.05},
  # => CS 440
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o1.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o3.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o4.id, score: 2.95},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2012).id, outcome_id: o6.id, score: 2.9},
  # => CS 484
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o3.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o4.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o5.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o6.id, score: 3.03},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},
  # => CS 485
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o1.id, score: 3.02},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o3.id, score: 3.14},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o4.id, score: 3.17},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o5.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2012).id, outcome_id: o6.id, score: 3},
  # => CS 499
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o3.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o4.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o5.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o6.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o7.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2012).id, outcome_id: o8.id, score: 3.1},


  # BAD 400 LEVEL STUDENTS
  # => FALL 2011
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o1.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o2.id, score: 2.67},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o3.id, score: 2.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2011).id, outcome_id: o5.id, score: 3},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o1.id, score: 2.55},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o2.id, score: 2.22},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o3.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o6.id, score: 2.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2011).id, outcome_id: o8.id, score: 2.98},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o1.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o2.id, score: 2.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2011).id, outcome_id: o3.id, score: 2.75},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o3.id, score: 2.97},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2011).id, outcome_id: o5.id, score: 3.05},
  # => CS 311
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o1.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o3.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o4.id, score: 2.95},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2011).id, outcome_id: o5.id, score: 3.25},
  # => CS 320
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o1.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o2.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2011).id, outcome_id: o3.id, score: 3.1},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o1.id, score: 3.07},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o2.id, score: 2.99},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o3.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2011).id, outcome_id: o4.id, score: 3.02},
  # 400
  # => CS 408
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o2.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o3.id, score: 3.03},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o4.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o5.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  # => CS 430
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o3.id, score: 3.02},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2011).id, outcome_id: o5.id, score: 3.12},
  # => CS 441
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o1.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o2.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o5.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2011).id, outcome_id: o8.id, score: 3},
  # => CS 455
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o1.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o2.id, score: 2.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o3.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o4.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o5.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o6.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o8.id, score: 2.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2011).id, outcome_id: o9.id, score: 2},
  # => CS 487
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o3.id, score: 3.01},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o4.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o5.id, score: 2.95},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o7.id, score: 3.07},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2011).id, outcome_id: o8.id, score: 2.8},
  # => CS 498
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o3.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o4.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o5.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o6.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o7.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o8.id, score: 3.06},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2011).id, outcome_id: o9.id, score: 2.94},

  # BAD 300 LEVEL STUDENTS
  # => Spring 2011
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o1.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o2.id, score: 2.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o3.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2011).id, outcome_id: o5.id, score: 2.8},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o2.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o3.id, score: 3.04},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o6.id, score: 2.98},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2011).id, outcome_id: o8.id, score: 2.6},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o1.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o2.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o3.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o1.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o2.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o3.id, score: 2.13},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2011).id, outcome_id: o5.id, score: 2.7},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o1.id, score: 2.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o2.id, score: 1.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o3.id, score: 2.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2011).id, outcome_id: o4.id, score: 2.5},
  # => CS 335
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o2.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2011).id, outcome_id: o3.id, score: 2.6},
  # => CS 350
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2011).id, outcome_id: o2.id, score: 2.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2011).id, outcome_id: o3.id, score: 1},
  # 400
  # => CS 404
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o1.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o3.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2011).id, outcome_id: o7.id, score: 3.17},
  # => CS 410
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o1.id, score: 3.88},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o2.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o3.id, score: 3.85},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o5.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2011).id, outcome_id: o7.id, score: 3.35},
  # => CS 440
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o1.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o2.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o3.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o4.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o5.id, score: 3.47},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2011).id, outcome_id: o6.id, score: 3.32},
  # => CS 484
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o3.id, score: 3.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o4.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o5.id, score: 3.54},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o6.id, score: 3.21},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2011).id, outcome_id: o8.id, score: 3.19},
  # => CS 485
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o1.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o3.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o4.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o5.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2011).id, outcome_id: o6.id, score: 3.2},
  # => CS 499
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o3.id, score: 3.61},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o4.id, score: 3.21},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o5.id, score: 3.84},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o6.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o7.id, score: 3.46},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2011).id, outcome_id: o8.id, score: 3.3},


  # BAD 300 LEVEL STUDENTS
  # => FALL 2010
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o1.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o2.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o3.id, score: 2.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o4.id, score: 2.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2010).id, outcome_id: o5.id, score: 2.2},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o1.id, score: 2.32},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o2.id, score: 2.57},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o3.id, score: 2.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o6.id, score: 2.42},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2010).id, outcome_id: o8.id, score: 2.7},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o1.id, score: 2.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o2.id, score: 2.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2010).id, outcome_id: o3.id, score: 2.6},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o1.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o2.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o3.id, score: 2.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2010).id, outcome_id: o5.id, score: 2.2},
  # => CS 311
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o1.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o2.id, score: 2.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o3.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o4.id, score: 2.07},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2010).id, outcome_id: o5.id, score: 2.3},
  # => CS 320
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o1.id, score: 2.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o2.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2010).id, outcome_id: o3.id, score: 2.5},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o1.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o2.id, score: 2.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o3.id, score: 2.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2010).id, outcome_id: o4.id, score: 2.43},
  # 400
  # => CS 408
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o1.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o2.id, score: 3.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o3.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o4.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o5.id, score: 3.17},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2010).id, outcome_id: o6.id, score: 3.4},
  # => CS 430
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o2.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o3.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2010).id, outcome_id: o5.id, score: 3.08},
  # => CS 441
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o1.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o2.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o3.id, score: 3.54},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o4.id, score: 3.17},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o5.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o6.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2010).id, outcome_id: o8.id, score: 3.26},
  # => CS 455
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o1.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o2.id, score: 2.87},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o3.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o4.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o5.id, score: 3.13},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o6.id, score: 3.36},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o8.id, score: 3.25},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2010).id, outcome_id: o9.id, score: 3.4},
  # => CS 487
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o1.id, score: 3.78},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o2.id, score: 3.54},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o3.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o4.id, score: 3.35},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o5.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o7.id, score: 3.28},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2010).id, outcome_id: o8.id, score: 3.6},
  # => CS 498
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o3.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o4.id, score: 3.52},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o5.id, score: 3.14},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o6.id, score: 3.19},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o7.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o8.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2010).id, outcome_id: o9.id, score: 3.23},

  # BAD 200 LEVEL STUDENTS
  # => Spring 2010
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o1.id, score: 1.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o2.id, score: 1.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o3.id, score: 2.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o4.id, score: 1.96},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2010).id, outcome_id: o5.id, score: 1.83},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o1.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o2.id, score: 2.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o3.id, score: 1.89},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o6.id, score: 1.94},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2010).id, outcome_id: o8.id, score: 2},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o1.id, score: 2.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o2.id, score: 2.13},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o3.id, score: 2.06},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2010).id, outcome_id: o4.id, score: 1.95},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o1.id, score: 2.87},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o2.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o3.id, score: 2.93},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2010).id, outcome_id: o5.id, score: 3},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o1.id, score: 3.02},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o2.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o3.id, score: 2.83},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2010).id, outcome_id: o4.id, score: 3.1},
  # => CS 335
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2010).id, outcome_id: o3.id, score: 3.1},
  # => CS 350
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2010).id, outcome_id: o2.id, score: 3.04},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2010).id, outcome_id: o3.id, score: 2.86},
  # 400
  # => CS 404
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o1.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o2.id, score: 3.68},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o3.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2010).id, outcome_id: o7.id, score: 3.31},
  # => CS 410
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o2.id, score: 3.67},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o3.id, score: 3.54},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o5.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2010).id, outcome_id: o7.id, score: 3.84},
  # => CS 440
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o1.id, score: 3.62},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o2.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o3.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o4.id, score: 3.65},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o5.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2010).id, outcome_id: o6.id, score: 3.28},
  # => CS 484
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o1.id, score: 3.21},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o2.id, score: 3.54},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o3.id, score: 3.16},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o4.id, score: 3.55},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o5.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2010).id, outcome_id: o8.id, score: 3.38},
  # => CS 485
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o2.id, score: 3.75},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o3.id, score: 3.28},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o4.id, score: 3.56},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o5.id, score: 3.82},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  # => CS 499
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o3.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o4.id, score: 3.71},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o5.id, score: 3.82},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o6.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o7.id, score: 3.53},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2010).id, outcome_id: o8.id, score: 3.4},


  # BAD 200 LEVEL STUDENTS
  # => FALL 2009
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o1.id, score: 1.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o2.id, score: 1.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o3.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o4.id, score: 1.67},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2009).id, outcome_id: o5.id, score: 1.85},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o1.id, score: 1.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o2.id, score: 1.75},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o3.id, score: 1.96},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o6.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2009).id, outcome_id: o8.id, score: 2.1},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o1.id, score: 1.87},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o2.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2009).id, outcome_id: o3.id, score: 2.04},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o1.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o2.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o3.id, score: 3.07},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "fall", 2009).id, outcome_id: o5.id, score: 3.93},
  # => CS 311
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o1.id, score: 2.84},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o2.id, score: 2.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o3.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o4.id, score: 2.79},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c311.id, "fall", 2009).id, outcome_id: o5.id, score: 2.74},
  # => CS 320
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o1.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o2.id, score: 2.99},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c320.id, "fall", 2009).id, outcome_id: o3.id, score: 2.81},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o1.id, score: 2.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o2.id, score: 2.94},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o3.id, score: 2.68},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "fall", 2009).id, outcome_id: o4.id, score: 3.04},
  # 400
  # => CS 408
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o2.id, score: 3.63},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o3.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o4.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o5.id, score: 3.55},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c408.id, "fall", 2009).id, outcome_id: o6.id, score: 3.32},
  # => CS 430
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o2.id, score: 3.45},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o3.id, score: 3.86},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c430.id, "fall", 2009).id, outcome_id: o5.id, score: 3.3},
  # => CS 441
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o1.id, score: 3.42},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o2.id, score: 3.56},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o3.id, score: 3.76},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o4.id, score: 3.32},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o5.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o6.id, score: 3.36},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c441.id, "fall", 2009).id, outcome_id: o8.id, score: 4},
  # => CS 455
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o1.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o2.id, score: 2.97},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o3.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o4.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o5.id, score: 3.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o6.id, score: 3.26},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o8.id, score: 3.35},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c455.id, "fall", 2009).id, outcome_id: o9.id, score: 3.27},
  # => CS 487
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o1.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o2.id, score: 3.76},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o3.id, score: 3.47},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o4.id, score: 3.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o5.id, score: 3.23},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o7.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c487.id, "fall", 2009).id, outcome_id: o8.id, score: 3.5},
  # => CS 498
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o3.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o4.id, score: 3.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o5.id, score: 3.14},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o6.id, score: 3.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o7.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o8.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2009).id, outcome_id: o9.id, score: 3.66},


  # => Spring 2009
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o1.id, score: 2.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o2.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o3.id, score: 2.43},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o4.id, score: 2.64},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "spring", 2009).id, outcome_id: o5.id, score: 2.5},
  # => CS 215
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o1.id, score: 2.6},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o2.id, score: 2.32},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o3.id, score: 2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o6.id, score: 2.47},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2009).id, outcome_id: o8.id, score: 2.7},
  # => CS 220
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o1.id, score: 2.56},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o2.id, score: 2.48},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o3.id, score: 2.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2009).id, outcome_id: o4.id, score: 2.15},
  # 300
  # => CS 306
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o1.id, score: 3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o2.id, score: 3.15},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o3.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c306.id, "spring", 2009).id, outcome_id: o5.id, score: 3.12},
  # => CS 330
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o1.id, score: 2.95},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o2.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o3.id, score: 3.14},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c330.id, "spring", 2009).id, outcome_id: o4.id, score: 3.07},
  # => CS 335
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o1.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o2.id, score: 3.09},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c335.id, "spring", 2009).id, outcome_id: o3.id, score: 3.05},
  # => CS 350
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2009).id, outcome_id: o2.id, score: 3.18},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c350.id, "spring", 2009).id, outcome_id: o3.id, score: 3},
  # 400
  # => CS 404
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o1.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o2.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o3.id, score: 3.83},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c404.id, "spring", 2009).id, outcome_id: o7.id, score: 3.5},
  # => CS 410
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o1.id, score: 3.27},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o3.id, score: 3.7},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o5.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c410.id, "spring", 2009).id, outcome_id: o7.id, score: 3.46},
  # => CS 440
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o1.id, score: 3.42},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o2.id, score: 3.61},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o3.id, score: 3.46},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o4.id, score: 3.37},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o5.id, score: 3.8},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c440.id, "spring", 2009).id, outcome_id: o6.id, score: 3.26},
  # => CS 484
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o1.id, score: 3.33},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o3.id, score: 3.64},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o4.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o5.id, score: 3.73},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o6.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c484.id, "spring", 2009).id, outcome_id: o8.id, score: 3.85},
  # => CS 485
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o1.id, score: 3.9},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o2.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o3.id, score: 3.58},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o4.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o5.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c485.id, "spring", 2009).id, outcome_id: o6.id, score: 3.53},
  # => CS 499
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o3.id, score: 3.4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o4.id, score: 3.64},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o5.id, score: 3.47},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o6.id, score: 3.59},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o7.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c499.id, "spring", 2009).id, outcome_id: o8.id, score: 3.5}

]


puts "DB Seeding Complete"