class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :state
      t.string :country
      t.string :url

      t.timestamps
    end
  end
end
