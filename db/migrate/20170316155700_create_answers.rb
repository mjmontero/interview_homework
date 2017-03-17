class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :student_id
      t.integer :homework_id
      t.string :answer
      t.datetime :submission_date

      t.timestamps null: false
    end
  end
end
