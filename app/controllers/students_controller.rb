class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
  end

  def edit
    find_student
  end

  def update
    find_student.update(post_params)
    redirect_to student_path
  end

  private

  def post_params(*args)
    params.require(:student)
  end
end
