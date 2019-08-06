class TeachersController < ApplicationController
  def index
  	@teachers = Teacher.all
  end

  def new
  	@teacher = Teacher.new
  end

  def create
  	@teacher = Teacher.new(teacher_params)
  	@teacher.user = current_user

  	# de cualquiera
  	@teacher.user.update!(role: "teacher")
  	# current_user.update!(role: "teacher")

  	if @teacher.save
  		redirect_to teacher_path(@teacher), notice: "Teacher saved"
  	else
  		flash[:alert] = "Teacher not saved."
  		render :new
  	end
  end

  def show
  	@teacher = Teacher.find(params[:id])
  end

  def edit
  	###
  end

  def update
  	
  end

  def destroy
  	
  end

  private
  	def teacher_params
  		params.require(:teacher).permit(:type_id, :phone, :name)
  	end
end
