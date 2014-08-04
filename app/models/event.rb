class Event < ActiveRecord::Base
	validates :latitude, presence: true, numericality: true
	validates :longitude, presence: true, numericality: true
	validates :status, presence: true
	validates :event_date, presence: true
end
