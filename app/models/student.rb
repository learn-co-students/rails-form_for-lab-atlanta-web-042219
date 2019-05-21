class Student < ActiveRecord::Base

	validates :first_name, :last_name, {presence: true}

  def to_s
    self.first_name + " " + self.last_name
  end
end