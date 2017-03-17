class Answer < ActiveRecord::Base
  belongs_to :student, class_name: "User", foreign_key: "student_id"
  belongs_to :homework

  validates :answer, presence: true
  validates :homework_id, presence: true
  validates :student_id, presence: true
end
