class Speaker < ApplicationRecord
  has_one_attached :Image_File
  validates_presence_of :Speaker_Name, :Topic_Name, :Bio, :Contact_Number, :Email, :Personal_ID, :Image_File, :Social_Media_Link, :Person_in_Charge
  validates_uniqueness_of :Speaker_Name, :Topic_Name, :Personal_ID
  validates_length_of :Contact_Number, maximum: 10
  validates_format_of :Email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validate :DOB
def DOB
errors.add(:field_name, 'Date of Birth must not be in the future') 
if year > Time.now.year 
end
  validates_format_of :Social_Media_Link, with: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
end
