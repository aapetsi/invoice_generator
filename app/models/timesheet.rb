class Timesheet < ApplicationRecord
  validates :employee_id, presence: true
  validates :billable_rate, presence: true
  validates :company, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true  
end
