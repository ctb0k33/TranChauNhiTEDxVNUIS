class Sponsor < ApplicationRecord
  belongs_to :sponsorship_level
  has_one_attached :Image_File
  has_one_attached :Contract_File
  validates_presence_of :Sponsor, :Contact_Number, :Email, :Address, :Sponsor_Type, :sponsorship_level, :Contract_File, :Person_in_Charge, :Website_Link
  validates_uniqueness_of :Sponsor
  validates_length_of :Contact_Number, maximum: 10
  validates_format_of :Email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :Website_Link, with: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
