class Homework < ActiveRecord::Base
  has_many :students, :through => :student_homeworks, class_name: "User", foreign_key: "student_id"
  has_many :student_homeworks
  has_many :answers

  validates :title, presence: true
  validates :question, presence: true
  validates :title, :uniqueness => {:scope => :question}

end
