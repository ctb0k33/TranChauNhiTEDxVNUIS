class CreateSponsorshipLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsorship_levels do |t|
      t.integer :Level_ID
      t.string :Sponsorship_Level
      t.integer :Value
      t.text :Description

      t.timestamps
    end
  end
end
