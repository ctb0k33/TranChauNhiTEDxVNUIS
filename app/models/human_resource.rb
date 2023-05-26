class HumanResource < ApplicationRecord
	validates_presence_of :Member_Name, :Contact_Number, :Email, :Department, :Position
end
