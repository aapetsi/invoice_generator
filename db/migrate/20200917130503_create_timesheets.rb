class CreateTimesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheets do |t|
      t.string :employee_id
      t.float :billable_rate
      t.string :company
      t.string :date
      t.integer :start_time
      t.integer :end_time
      t.float :total_hours

      t.timestamps
    end
  end
end
