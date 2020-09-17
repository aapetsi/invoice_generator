class CreateTimeSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :time_sheets do |t|
      t.string :employee_id
      t.float :billable_rate
      t.string :company
      t.string :date
      t.string :start_time
      t.string :end_time
      t.float :total_hours

      t.timestamps
    end
  end
end
