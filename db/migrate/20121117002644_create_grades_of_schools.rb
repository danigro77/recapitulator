class CreateGradesOfSchools < ActiveRecord::Migration
  def change
    create_table :grades_of_schools do |t|
      t.string    :name
      
      t.integer   :school_id

      t.datetime  :start_date
      t.datetime  :end_date

      t.timestamps
    end
  end
end
