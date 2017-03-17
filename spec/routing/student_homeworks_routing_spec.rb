require "rails_helper"

RSpec.describe StudentHomeworksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_homeworks").to route_to("student_homeworks#index")
    end

    it "routes to #new" do
      expect(:get => "/student_homeworks/new").to route_to("student_homeworks#new")
    end

    it "routes to #show" do
      expect(:get => "/student_homeworks/1").to route_to("student_homeworks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_homeworks/1/edit").to route_to("student_homeworks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_homeworks").to route_to("student_homeworks#create")
    end

    it "routes to #update" do
      expect(:put => "/student_homeworks/1").to route_to("student_homeworks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_homeworks/1").to route_to("student_homeworks#destroy", :id => "1")
    end

  end
end
