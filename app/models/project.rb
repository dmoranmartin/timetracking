class Project < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true,  length: { maximum: 30 }
	
	has_many :entries
	def self.iron_find(id)
	 project = where(id: id).first
		 unless project.present?
		 	raise
		 	ActiveRecordd::RecordNotFound.new("Couldn't find project with id=#{id}")
		 end
	 project
	end

	def self.last_created_projects(n)
		Project.order(created_at: :desc).limit(n)
	end

	def total_hours_in_month(month, year)
		
		monthstart = Date.new(year,month,01)
		monthend= monthstart.end_of_month
		projects = entries.where(date: monthstart..monthend)
		min = 0
		hours = 0
		projects.each do |entry|
			min += entry.minutes
			hours += entry.hours
		end
		mintotal = min%60
		hours += min/60
		result = "Llevas un total de " + hours.to_s + " horas y " +  mintotal.to_s + " minutos trabajando en este proyecto durante el mes " + month.to_s 
	end
end
