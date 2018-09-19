class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def new
  end

  def create
    Student.create(params[:student])
    redirect_to students_path
  end
end
