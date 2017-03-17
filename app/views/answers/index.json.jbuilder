json.array!(@answers) do |answer|
  json.extract! answer, :id, :student_id, :homework_id, :answer, :submission_date
  json.url answer_url(answer, format: :json)
end
