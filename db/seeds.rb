# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Timesheet.create!({
    employee_id: '1', 
    billable_rate: 300,
    company: 'Facebook',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '1', 
    billable_rate: 300,
    company: 'Yahoo',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'Google',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'Yahoo',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '2', 
    billable_rate: 400,
    company: 'Facebook',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '3', 
    billable_rate: 450,
    company: 'Google',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })

  Timesheet.create!({
    employee_id: '3', 
    billable_rate: 450,
    company: 'Facebook',
    date: '2020-01-01',
    start_time: '09:00',
    end_time: '15:00',
    total_hours: 6
  })
end 