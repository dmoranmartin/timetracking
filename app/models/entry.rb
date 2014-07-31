class Entry < ActiveRecord::Base
	belongs_to :project
	validates :minutes, :hours, numericality: { message: "How could this not be a number?!?!?!" }, presence: true

end
