class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text

      t.boolean :right_answer

      t.integer :question_id

      t.timestamps
    end
  end
end
