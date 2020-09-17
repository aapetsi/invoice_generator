module Api
  module V1
    class InvoiceController < ApplicationController
      def show
        timesheets = Timesheet.where(company: params[:id])
        total_cost = 0.0
        puts '-----------'
        timesheets.each do |timesheet|
          total_cost += timesheet.total_hours * timesheet.billable_rate
          puts timesheet.company
        end
        puts '-----------'
        render json: {status: 'SUCCESS', message:'Loaded timesheets', data:timesheets, total:total_cost}, status: :ok
      end

      def invoice_params
        params.permit(:company_name)
      end
    end
  end
end