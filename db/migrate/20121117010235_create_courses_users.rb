class CreateCoursesUsers < ActiveRecord::Migration
  def change
    create_table :courses_users, :id => false do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end