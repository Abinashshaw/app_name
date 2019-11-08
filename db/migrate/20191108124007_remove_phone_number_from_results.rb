class RemovePhoneNumberFromResults < ActiveRecord::Migration[6.0]
  def change
    remove_column :results, :phone_number, :integer
  end
end
