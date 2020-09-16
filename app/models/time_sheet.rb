class TimeSheet < ApplicationRecord
  validates :employee_id, :billable_rate, :company, :date, :start_time, :end_time, presence: true
end