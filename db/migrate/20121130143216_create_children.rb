class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :image
      t.integer :total_points, default: 0
      t.date :date_of_birth

      t.timestamps
    end
  end
end
