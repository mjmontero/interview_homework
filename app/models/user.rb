class User < ActiveRecord::Base
  enum role: [:teacher, :student]

  validates :username, presence: true, uniqueness: true
  validates :role, presence: true

  has_many :homeworks, :through => :student_homeworks
  has_many :student_homeworks, foreign_key: "student_id"
  has_many :answers, foreign_key: "student_id"

end
