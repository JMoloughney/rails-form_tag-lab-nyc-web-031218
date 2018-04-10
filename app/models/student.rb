class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end



  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to students_path
  end

end
