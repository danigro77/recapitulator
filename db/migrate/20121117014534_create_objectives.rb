class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string  :text

      t.integer :lesson_id

      t.timestamps
    end
  end
end
