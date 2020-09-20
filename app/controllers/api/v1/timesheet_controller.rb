module Api
  module V1
    class TimesheetController < ApplicationController
      def index
        timesheets = Timesheet.order('created_at DESC')
        render json: {status: 'SUCCESS', message:'Loaded timesheets', data: timesheets}, status: :ok
      end

      def show
        timesheet = Timesheet.find(params[:id])
        
        render json: {status: 'SUCCESS', message:'Loaded timesheets', data: timesheet}, status: :ok
      end

      def create
        timesheet = Timesheet.new(timesheet_params)
        timesheet.start_time = timesheet_params[:start_time].tr(':', '').to_f
        timesheet.end_time = timesheet_params[:end_time].tr(':', '').to_f
        total_hours = (timesheet.end_time - timesheet.start_time) / 100.0
        timesheet.total_hours = total_hours
        timesheet.company = timesheet.company.downcase


        if timesheet.save
          render json: {status: 'SUCCESS', message:'Saved timesheet', data: timesheet}, status: :ok
        else 
          render json: {status: 'ERROR', message:'Timesheet not saved', data: timesheet.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        timesheet = Timesheet.find(params[:id])
        timesheet.destroy

        render json: {status: 'SUCCESS', message:'Deleted timesheet', data:timesheet}, status: :ok
      end

      def update
        timesheet = Timesheet.find(params[:id])

        if timesheet.update(timesheet_params)
          total_hours = (timesheet.end_time - timesheet.start_time) / 100.0
          timesheet.total_hours = total_hours

          if timesheet_params[:start_time]
            puts '============='
            timesheet.start_time = timesheet_params[:start_time].tr(':', '').to_f
            puts '============='
          end

          if timesheet_params[:end_time]
            puts '============='
            timesheet.end_time = timesheet_params[:end_time].tr(':', '').to_f
            puts '============='
          end
          
          render json: {status: 'SUCCESS', message: 'Updated timesheet', data: timesheet}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Timesheet not updated', data: timesheet.errors}, status: :unprocessable_entity
        end
      end

      private

      def timesheet_params
        params.permit(:id, :employee_id, :billable_rate, :company, :date, :start_time, :end_time)
      end
    end
  end
end