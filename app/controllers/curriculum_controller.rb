class CurriculumController < ApplicationController
  

  def siucs

    curriculum = Curriculum.find_by_text "Southern Illinois University Computer Science"

    getCurriculum(curriculum)

  end

  def test

    curriculum = Curriculum.find_by_text "Test Curriculum"

    getCurriculum(curriculum)

  end


  private

    def getCurriculum(curriculum)
      courses = Course.where("curriculum_id = ?",curriculum.id)
      categories = Category.where("curriculum_id = ?",curriculum.id)
      outcomes = Outcome.where("curriculum_id = ?",curriculum.id)
      objectives = EducationalObjective.where('curriculum_id = ?',curriculum.id)

      scheduledCourses = []
      courses.each do |course|
        scheduledCourses += ScheduledCourse.where("course_id = ?",course.id)
      end

      scores = []
      grade_counts = []
      scheduledCourses.each do |course|
        scores += Score.where("scheduled_course_id = ?",course.id)
        grade_counts += GradeCount.where("scheduled_course_id = ?",course.id)
      end



      @curriculum_data = {
        "Curriculum" => curriculum,
        "Courses" => courses,
        "Categories" => categories,
        "Outcomes" => outcomes,
        "ScheduledCourses" => scheduledCourses,
        "Scores" => scores,
        "EducationalObjectives" => objectives,
        "GradeCounts" => grade_counts
      }
    end
  
end