class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.send_students_record.subject
  #
  def send_students_record(students)
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @students = students

    mail to: "abinashshaw16@gmail.com", subject: "Students Record ordered by name"
  end
end
