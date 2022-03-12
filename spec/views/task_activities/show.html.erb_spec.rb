require 'rails_helper'

RSpec.describe 'task_activities/show', type: :view do
  before(:each) do
    @task_activity = assign(:task_activity, TaskActivity.create!(
                                              title: 'Title',
                                              completed: false
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
  end
end
