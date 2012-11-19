class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string    :title
      t.integer   :number_of_answers

      t.datetime  :date

      t.integer   :course_id

      t.timestamps
    end
  end
end
