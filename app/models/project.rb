class Project < ActiveRecord::Base
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
end
