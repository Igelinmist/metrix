class ScansController < ApplicationController
  before_filter :setup_class
  def create
    @documentable = @documentable_class.find(@documentable_id)
    uploaded_io = params[:scan][:uploaded_file]
    File.open(Rails.root.join('public', 'data', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    @scan = @documentable.scans.create(descr: params[:scan][:descr],file_name: uploaded_io.original_filename)
    redirect_to @documentable
  end
  def destroy
    @scan = Scan.find(params[:id])
    @scanable = @scan.imageable
    @scan.destroy
    redirect_to @scanable
  end

  private

  def scan_params
    params.require(:scan).permit(:descr,:uploaded_file)
  end

  def setup_class
    resource,@documentable_id = request.path.split('/')[1,2]
    @documentable_class = resource.singularize.classify.constantize
  end
end
