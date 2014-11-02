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
  {number: 430, title: "Database Systems", category_id: cat4},
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

ScheduledCourse.create [
  {course_id: c202.id, semester: "spring", year: 2013},
  {course_id: c215.id, semester: "spring", year: 2013},
  {course_id: c220.id, semester: "spring", year: 2013},
  {course_id: c306.id, semester: "spring", year: 2013},
  {course_id: c330.id, semester: "spring", year: 2013},
  {course_id: c335.id, semester: "spring", year: 2013},
  {course_id: c350.id, semester: "spring", year: 2013},
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


Score.create [
  # => Spring 2013
  # => CS 214
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o1.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o2.id, score: 2.96},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o3.id, score: 2.65},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o6.id, score: 4},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "spring", 2013).id, outcome_id: o8.id, score: 4},
  # => CS 2o9
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o1.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o2.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o3.id, score: 3.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "spring", 2013).id, outcome_id: o4.id, score: 3.7},
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
  # => CS 4o9
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
  # => FALL 20o9
  # => CS 202
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o1.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o2.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o3.id, score: 3.34},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o4.id, score: 3.24},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c202.id, "fall", 2013).id, outcome_id: o5.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o1.id, score: 3.05},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o2.id, score: 3.1},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o3.id, score: 3.12},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o6.id, score: 3.2},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c215.id, "fall", 2013).id, outcome_id: o8.id, score: 3.2},
  # => CS 2o9
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o1.id, score: 2.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o2.id, score: 1.5},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c220.id, "fall", 2013).id, outcome_id: o3.id, score: 1.55},
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
  # => CS 4o9
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
  # => CS 4o9
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o3.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o4.id, score: 3.38},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o5.id, score: 3.3},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o6.id, score: 3.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o7.id, score: 3.21},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o8.id, score: 3.31},
  {sched_course_id: ScheduledCourse.find_by_course_id_and_semester_and_year!(c498.id, "fall", 2013).id, outcome_id: o9.id, score: 3.21}
]


puts "DB Seeding Complete"