class AddDetailsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :points, :integer
    add_column :tasks, :child_id, :integer
    add_column :tasks, :due_date, :date
  end
end
