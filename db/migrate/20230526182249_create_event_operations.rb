class CreateEventOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :event_operations do |t|
      t.integer :Task_ID
      t.text :Task_Name
      t.text :Person_in_Charge
      t.text :Description
      t.datetime :Deadline
      t.text :Status
      t.text :Note

      t.timestamps
    end
  end
end
