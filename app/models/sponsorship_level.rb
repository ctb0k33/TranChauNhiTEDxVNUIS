class SponsorshipLevel < ApplicationRecord
	has_many :sponsors
	validates_presence_of :Sponsorship_Level, :Value, :Description
	validates :Value, numericality: { greater_than: 0 }
end