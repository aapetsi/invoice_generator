require 'rails_helper'

# Test suite for the Timesheet model
RSpec.describe Timesheet, type: :model do
  # Validation tests
  # Ensure required columns are present before saving
  it { should validate_presence_of(:employee_id) }
  it { should validate_presence_of(:billable_rate) }
  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }
end