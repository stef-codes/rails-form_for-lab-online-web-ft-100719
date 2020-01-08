class StudentsController < ActionController::Base
require 'pry'
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
  
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
      # binding.pry
      @student = Student.new
      @student.first_name = params[:student][:first_name]
      @student.last_name = params[:student][:last_name]
      @student.save
      redirect_to student_path(@student)
    end
  
    # add edit and update methods here
    def edit
      @student = Student.find(params[:id])
    end
  
    def update
      @student = Student.find(params[:id])
      @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
      redirect_to student_path(@student)
    end
end