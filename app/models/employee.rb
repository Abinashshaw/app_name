class Employee < ApplicationRecord
  def self.to_pdf
    Prawn::Document.new do
      Employee.all.each do |employee|
        text "name: #{employee.name}"
        text "email: #{employee.email}"
        text "phone_number: #{employee.phone_number}"
        text "\n"
        # text "name\t\temail\t\t\tphone_number"
        # text "\n"
        # text "#{employee.name}\t\t#{employee.email}\t\t\t#{employee.phone_number}"
        # text "\n"
        # filename: "Employees"
        # type: "application/pdf"
        # desposition: "inline"
      end
    end.render
  end
end
