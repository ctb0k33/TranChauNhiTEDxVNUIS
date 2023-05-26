class CreateMarketingContents < ActiveRecord::Migration[7.0]
  def change
    create_table :marketing_contents do |t|
      t.integer :Marcom_ID
      t.text :Content_Name
      t.text :Description
      t.text :Social_Networking_Platform
      t.datetime :Deadline
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end
