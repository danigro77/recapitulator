class AddSchoolIdToGradeOfSchools < ActiveRecord::Migration
  def change
    add_column :grades_of_schools, :school_id, :integer
  end
end
