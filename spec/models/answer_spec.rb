require 'rails_helper'

RSpec.describe Answer, type: :model do

  before(:each) do
    @user = FactoryGirl.build(:user)
    @homework = FactoryGirl.build(:homework)
  end

  it "is not valid without an asnwer" do
    answer = Answer.new(student_id: @user.id, homework_id: @homework.id, answer: nil)
  	expect(answer).to_not be_valid
  end  

  it "is not valid without a student" do
    answer = Answer.new(homework_id: @homework.id, answer: 'answer')
  	expect(answer).to_not be_valid
  end 

  it "is not valid without a homework" do
    answer = Answer.new(student_id: @user.id, answer: 'answer')
  	expect(answer).to_not be_valid
  end 

end
