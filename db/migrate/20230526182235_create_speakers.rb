class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.integer :Speaker_ID
      t.text :Speaker_Name
      t.text :Topic_Name
      t.text :Bio
      t.integer :Contact_Number
      t.text :Email
      t.text :Address
      t.date :DOB
      t.text :Personal_ID
      t.string :Social_Media_Link
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end
