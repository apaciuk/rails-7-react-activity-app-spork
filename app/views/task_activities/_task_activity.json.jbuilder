json.extract! task_activity, :id, :title, :completed, :created_at, :updated_at
json.url task_activity_url(task_activity, format: :json)
