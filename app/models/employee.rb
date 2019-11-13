class Employee < ApplicationRecord
  def self.to_pdf
    pdf = Prawn::Document.new do |pdf|
      self.all.each do |employee|
        pdf.text "name: #{employee.name}"
        pdf.text "email: #{employee.email}"
        pdf.text "phone_number: #{employee.phone_number}"
        pdf.text "\n"
        # pdf.text "name\t\temail\t\t\tphone_number"
        # pdf.text "\n"
        # pdf.text "#{employee.name}\t\t#{employee.email}\t\t\t#{employee.phone_number}"
        # pdf.text "\n"
        # filename: "Employees"
        # type: "application/pdf"
        # desposition: "inline"
      end
    end
      pdf.render
  end
end
