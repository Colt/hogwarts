class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = params[:student]
  end

  def new
    @student = Student.new
    house << student
    redirect to 'index'
  end

  def create
    new_student = Student.new(params)
  end

end