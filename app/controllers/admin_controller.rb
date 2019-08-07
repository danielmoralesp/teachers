class AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :is_admin?

	def show_all_teachers
		@teachers = Teacher.all
	end

	def show_all_students
		@students = Student.all
	end

	def show_all_tutorings
		@tutorings = Tutoring.all
	end


	private

		def is_admin?
			unless current_user.admin?
				redirect_to root_path, alert: "You don't have permissions"
			end
		end
end
