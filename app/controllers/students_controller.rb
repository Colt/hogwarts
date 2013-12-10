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
    new_student = Student.create(params[:student])
    # house << student
    redirect_to '/students'
  end

end