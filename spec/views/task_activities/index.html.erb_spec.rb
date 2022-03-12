require 'rails_helper'

RSpec.describe "task_activities/index", type: :view do
  before(:each) do
    assign(:task_activities, [
      TaskActivity.create!(
        title: "Title",
        completed: false
      ),
      TaskActivity.create!(
        title: "Title",
        completed: false
      )
    ])
  end

  it "renders a list of task_activities" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
