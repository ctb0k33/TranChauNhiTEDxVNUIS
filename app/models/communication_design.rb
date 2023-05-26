class CommunicationDesign < ApplicationRecord
  has_one_attached :File
  validates_presence_of :Task_Name, :Description, :File, :Deadline, :Person_in_Charge
end
