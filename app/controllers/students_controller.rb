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
    sort.students.create(params[:student])
    # house << student
    redirect_to '/students'
  end

  def sort
    House.find(2)
  end

end