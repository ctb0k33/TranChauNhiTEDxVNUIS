class CreateCommunicationDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :communication_designs do |t|
      t.integer :Marcom_ID
      t.text :Task_Name
      t.text :Description
      t.datetime :Deadline
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end
