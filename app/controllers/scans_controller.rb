class ScansController < ApplicationController
  def create
    @meter = Meter.find(params[params[:type].underscore+'_id'])
    @scan = @meter.scans.create(scan_params)
    redirect_to meter_path(@meter)
  end
  private
    def scan_params
      params.require(:scan).permit(:descr,:path)
    end
end
