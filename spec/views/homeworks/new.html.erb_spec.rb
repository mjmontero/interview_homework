require 'rails_helper'

RSpec.describe "homeworks/new", type: :view do
  before(:each) do
    assign(:homework, Homework.new(
      :title => "MyString",
      :question => "MyString"
    ))
  end

  it "renders new homework form" do
    render

    assert_select "form[action=?][method=?]", homeworks_path, "post" do

      assert_select "input#homework_title[name=?]", "homework[title]"

      assert_select "input#homework_question[name=?]", "homework[question]"
    end
  end
end
