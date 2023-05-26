class CreateSponsors < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsors do |t|
      t.integer :Sponsor_ID
      t.text :Sponsor
      t.integer :Contact_Number
      t.text :Email
      t.text :Address
      t.text :Sponsor_Type
      t.text:Sponsorship_Level
      t.attachment :Image_File
      t.string :Website_Link
      t.attachment :Contract_File
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end

