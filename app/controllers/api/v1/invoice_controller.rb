module Api
  module V1
    class InvoiceController < ApplicationController
      def show
        timesheets = Timesheet.select("employee_id, billable_rate, SUM(billable_rate * total_hours) as total_cost, SUM(total_hours) as number_of_hours").where(company: params[:id]).group("employee_id, billable_rate")
        
        # Calculate total cost
        total_cost = 0.0
  
        timesheets.each do |timesheet|
          total_cost += timesheet.total_cost
        end
       
        render json: {status: 'SUCCESS', message:'Generated invoice', total: total_cost, data: timesheets}, status: :ok
      end
    end
  end
end