class SpeakingTopic < ApplicationRecord
  has_one_attached :Image_File
  validates_presence_of :Topic_Name, :Description, :Image_File, :Video_Url, :Workspace_Link
  validates_uniqueness_of :Topic_Name
  validates_format_of :Workspace_Link, with: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
