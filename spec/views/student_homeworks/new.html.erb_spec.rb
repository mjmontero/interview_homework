require 'rails_helper'

RSpec.describe "student_homeworks/new", type: :view do
  before(:each) do
    assign(:student_homework, StudentHomework.new(
      :student_id => 1,
      :homework_id => 1
    ))
  end

  it "renders new student_homework form" do
    render

    assert_select "form[action=?][method=?]", student_homeworks_path, "post" do

      assert_select "input#student_homework_student_id[name=?]", "student_homework[student_id]"

      assert_select "input#student_homework_homework_id[name=?]", "student_homework[homework_id]"
    end
  end
end
