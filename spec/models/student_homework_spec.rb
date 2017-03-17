require 'rails_helper'

RSpec.describe StudentHomework, type: :model do
  it "should be unique" do
    sh1 = StudentHomework.create!(student_id: 1, homework_id: 1)
    sh2 = StudentHomework.new(student_id: 1, homework_id: 1)
  	expect(sh2).to_not be_valid
  end  

  it "is not valid without a student" do
    sh = StudentHomework.new(homework_id: 1)
  	expect(sh).to_not be_valid
  end  

  it "is not valid without a homework" do
    sh = StudentHomework.new(student_id: 1)
  	expect(sh).to_not be_valid
  end    
end
