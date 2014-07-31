class ProjectController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def show
		@project = Project.find params[:id]
		rescue ActiveRecord::RecordNotFound
	  		render 'error', layout: "showlay"
	end
end