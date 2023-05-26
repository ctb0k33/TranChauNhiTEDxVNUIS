class EventOperation < ApplicationRecord
	validates_presence_of :Task_Name, :Person_in_Charge, :Description, :Deadline, :Status
end
