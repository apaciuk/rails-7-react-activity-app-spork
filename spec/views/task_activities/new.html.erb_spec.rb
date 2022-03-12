require 'rails_helper'

RSpec.describe 'task_activities/new', type: :view do
  before(:each) do
    assign(:task_activity, TaskActivity.new(
                             title: 'MyString',
                             completed: false
                           ))
  end

  it 'renders new task_activity form' do
    render

    assert_select 'form[action=?][method=?]', task_activities_path, 'post' do
      assert_select 'input[name=?]', 'task_activity[title]'

      assert_select 'input[name=?]', 'task_activity[completed]'
    end
  end
end
