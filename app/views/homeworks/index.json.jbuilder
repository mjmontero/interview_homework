json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :title, :question, :due_date
  json.url homework_url(homework, format: :json)
end
