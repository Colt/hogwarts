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
    # Create new student
    @student = Student.create(params[:student])
    # add student to result of sorter
    sorter.students << @student
    redirect_to student_path(@student)
  end

  def sorter
    # Picks and returns one of the 4 houses.
    num = 1 + rand(4)
    House.find(num)
  end

end