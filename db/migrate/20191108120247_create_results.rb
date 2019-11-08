class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :user_name
      t.string :user_email
      t.integer :phone_number

      t.timestamps
    end
  end
end
