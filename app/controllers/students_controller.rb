class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_attributes)
    redirect_to student_path(@student)
  end

  private

  def student_attributes
    params.require(:student).permit!
  end

end
