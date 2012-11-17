class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :text

      t.integer :number_answers
      t.integer :mistake_type
      t.boolean :awesome

      t.integer :lesson_id
      t.integer :user_id

      t.timestamps
    end
  end
end
