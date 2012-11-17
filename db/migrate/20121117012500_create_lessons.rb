class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string    :title

      t.datetime  :date

      t.integer   :course_id

      t.timestamps
    end
  end
end
