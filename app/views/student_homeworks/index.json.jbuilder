json.array!(@student_homeworks) do |student_homework|
  json.extract! student_homework, :id, :student_id, :homework_id
  json.url student_homework_url(student_homework, format: :json)
end
