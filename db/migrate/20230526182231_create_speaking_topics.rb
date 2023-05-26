class CreateSpeakingTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :speaking_topics do |t|
      t.integer :Topic_ID
      t.text :Topic_Name
      t.text :Description
      t.string :Video_Url
      t.string :Workspace_Link

      t.timestamps
    end
  end
end
