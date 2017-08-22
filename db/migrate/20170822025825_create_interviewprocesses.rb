class CreateInterviewprocesses < ActiveRecord::Migration
  def change
    create_table :interviewprocesses do |t|
      t.string :interview_number
      t.integer :position_id
      t.integer :interview_type_id
      t.integer :question_id
      t.integer :project_id
      t.string :comments

      t.timestamps null: false
    end
  end
end
