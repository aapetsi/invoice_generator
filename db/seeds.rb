# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Timesheet.create!({
    employee_id: '1', 
    billable_rate: 300,
    company: 'facebook',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '1', 
    billable_rate: 300,
    company: 'yahoo',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'google',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'yahoo',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'facebook',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '3', 
    billable_rate: 450,
    company: 'google',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '3', 
    billable_rate: 450,
    company: 'facebook',
    date: '2020-01-01',
    start_time: 900,
    end_time: 1500,
    total_hours: 6
  })
end 