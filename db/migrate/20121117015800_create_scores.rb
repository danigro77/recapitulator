class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :max_points

      t.integer :lesson_id
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
