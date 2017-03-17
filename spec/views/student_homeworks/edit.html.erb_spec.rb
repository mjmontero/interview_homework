require 'rails_helper'

RSpec.describe "student_homeworks/edit", type: :view do
  before(:each) do
    @student_homework = assign(:student_homework, StudentHomework.create!(
      :student_id => 1,
      :homework_id => 1
    ))
  end

  it "renders the edit student_homework form" do
    render

    assert_select "form[action=?][method=?]", student_homework_path(@student_homework), "post" do

      assert_select "input#student_homework_student_id[name=?]", "student_homework[student_id]"

      assert_select "input#student_homework_homework_id[name=?]", "student_homework[homework_id]"
    end
  end
end
