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
    @meter = @meter_class.new(meter_params)
    @meter.save ? redirect_to(@meter, notice: 'Meter was successfully created.') : render(action: :new)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @meter.update(meter_params)
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

private

  def meter_params
    case params[:type]
      when 'VoltageTransformer';params.require(:voltage_transformer).permit(:assembly_id,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number,voltage_transformer_attr_attributes: [ :id,:s_fact,:s_nom,:switchboards,:transform_koef,:voltage_loses,:voltage_transformer_id ])
      when 'Elcounter';params.require(:elcounter).permit(:assembly_id,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number,elcounter_attr_attributes: [ :id,:connection_schema,:year_of_production,:gost,:elcounter_id ])
    end

  end

  def setup_class
    resource = request.path.split('/')[1]
    @meter_class = resource.singularize.classify.constantize
  end

  def set_meter_item
    @meter = Meter.find(params[:id])
  end



end
