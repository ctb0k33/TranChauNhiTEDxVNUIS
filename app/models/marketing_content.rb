class MarketingContent < ApplicationRecord
  has_one_attached :File
  validates_presence_of :Content_Name, :Description, :File, :Social_Networking_Platform, :Deadline, :Person_in_Charge
end
