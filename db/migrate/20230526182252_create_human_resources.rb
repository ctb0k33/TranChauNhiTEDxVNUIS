class CreateHumanResources < ActiveRecord::Migration[7.0]
  def change
    create_table :human_resources do |t|
      t.integer :Member_ID
      t.text :Member_Name
      t.integer :Contact_Number
      t.text :Email
      t.text :Department
      t.text :Description
      t.text :Position
      t.text :Bio

      t.timestamps
    end
  end
end
