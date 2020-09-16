class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render "index"
  end

  def show
    render "show"
  end

  def activate
    @stud = Student.find(params[:id])
    @stud.active_status_change
    redirect_to :action => "show", :id => @stud.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end