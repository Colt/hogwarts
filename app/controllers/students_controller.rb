class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = params[:student]
  end

  def new
    new_student = Student.new(params)
    student = Student.create
    house << student
    redirect to 'index'
  end
end