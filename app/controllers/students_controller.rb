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
    house = House.find(1)
    house.students.create(params[:student])
    # house << student
    redirect_to '/students'
  end

end