class AddPhoneNumberToResults < ActiveRecord::Migration[6.0]
  def change
    add_column :results, :phone_number, :string
  end
end
