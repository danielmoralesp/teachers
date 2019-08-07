class TutoringsController < ApplicationController
	before_action :authenticate_user!
	before_action :validate_student, only: [:new]


	def new
		@tutoring = Tutoring.new
	end

	private
		def validate_student
			unless current_user.student?
				redirect_to root_path, alert: "You don't have permissons. You should be a student"
			end
		end
end
