require 'rails_helper'

RSpec.describe "homeworks/edit", type: :view do
  before(:each) do
    @homework = assign(:homework, Homework.create!(
      :title => "MyString",
      :question => "MyString"
    ))
  end

  it "renders the edit homework form" do
    render

    assert_select "form[action=?][method=?]", homework_path(@homework), "post" do

      assert_select "input#homework_title[name=?]", "homework[title]"

      assert_select "input#homework_question[name=?]", "homework[question]"
    end
  end
end
