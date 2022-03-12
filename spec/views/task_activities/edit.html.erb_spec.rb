require 'rails_helper'

RSpec.describe 'task_activities/edit', type: :view do
  before(:each) do
    @task_activity = assign(:task_activity, TaskActivity.create!(
                                              title: 'MyString',
                                              completed: false
                                            ))
  end

  it 'renders the edit task_activity form' do
    render

    assert_select 'form[action=?][method=?]', task_activity_path(@task_activity), 'post' do
      assert_select 'input[name=?]', 'task_activity[title]'

      assert_select 'input[name=?]', 'task_activity[completed]'
    end
  end
end
