FactoryBot.define do 
  factory :timesheet do 
    employee_id { "1" }
    billable_rate { 400 }
    company { "instagram" }
    date { "2019-01-01" }
    start_time { 800 }
    end_time { 1300 }
    total_hours { 5 }
  end
end