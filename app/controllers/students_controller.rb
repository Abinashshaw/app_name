class StudentsController < ApplicationController
  def index
    @students = Student.all.order(name: :asc).limit(50)
    StudentMailer.send_students_record(@students).deliver
  end
end
