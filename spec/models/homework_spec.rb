require 'rails_helper'

RSpec.describe Homework, type: :model do
  it "is not valid without a title" do
    hw = Homework.new(title: nil)
  	expect(hw).to_not be_valid
  end  

  it "is not valid without a title" do
    hw = Homework.new(question: nil)
  	expect(hw).to_not be_valid
  end  

  it "should be unique" do
    hw1 = Homework.create!(title: 't1', question: 'q1')
    hw2 = Homework.new(title: 't1', question: 'q1')
  	expect(hw2).to_not be_valid
  end  

end
