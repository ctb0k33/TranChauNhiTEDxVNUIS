class ChangeSponsorshipLevelInSponsors < ActiveRecord::Migration[6.0]
  def change
    remove_column :sponsors, :Sponsorship_Level, :text
    add_reference :sponsors, :Sponsorship_level, foreign_key: true
  end
end
