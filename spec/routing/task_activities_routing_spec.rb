require "rails_helper"

RSpec.describe TaskActivitiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/task_activities").to route_to("task_activities#index")
    end

    it "routes to #new" do
      expect(get: "/task_activities/new").to route_to("task_activities#new")
    end

    it "routes to #show" do
      expect(get: "/task_activities/1").to route_to("task_activities#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/task_activities/1/edit").to route_to("task_activities#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/task_activities").to route_to("task_activities#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/task_activities/1").to route_to("task_activities#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/task_activities/1").to route_to("task_activities#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/task_activities/1").to route_to("task_activities#destroy", id: "1")
    end
  end
end
