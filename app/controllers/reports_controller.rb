class ReportsController < ApplicationController
  def index
  	@reports = Report.all
  	@newReport = Report.new
  end
  def create 
  	@newReport = Report.new(report_params)
  	if@newReport.save
  		redirect_to :action => 'index'
  	else
  		render(:action=> 'new')
  	end
  end
  def report_params
  	params.require(:report).permit(:story)
  end
end
