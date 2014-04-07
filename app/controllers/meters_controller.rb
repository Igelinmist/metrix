class MetersController < ApplicationController
  before_filter :setup_class
  before_filter :set_meter_item, only: [:show, :edit, :update, :destroy]
  def index
    #@meters = @meter_class.all
    @meters = Meter.all

  end

  def new
    @meter = @meter_class.new
  end

  def show
    @meter = @meter_class.find(params[:id])
  end

  def create
    @meter = @meter_class.new(@meter_class.permited_params(params))
    @meter.save ? redirect_to(@meter, notice: 'Meter was successfully created.') : render(action: :new)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @meter.update(@meter_class.permited_params(params))
        format.html { redirect_to @meter, notice: 'Meter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @meter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meter.destroy
    respond_to do |format|
      format.html { redirect_to controller: :meters, action: :index }
      format.json { head :no_content }
    end
  end

  def upload
    uploaded_io = params[:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    redirect_to controller: :meters, action: :new
  end

private

  def setup_class
    params[:type].nil? ? resource = request.path.split('/')[1] : resource = params[:type]
    @meter_class = resource.singularize.classify.constantize
  end

  def set_meter_item
    @meter = Meter.find(params[:id])
  end

end
