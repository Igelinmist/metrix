class GrsiItemsController < ApplicationController
  before_action :set_grsi_item, only: [:show, :edit, :update, :destroy]

  # GET /grsi_items
  # GET /grsi_items.json
  def index
    @grsi_items = GrsiItem.all
  end

  # GET /grsi_items/1
  # GET /grsi_items/1.json
  def show
  end

  # GET /grsi_items/new
  def new
    @grsi_item = GrsiItem.new
  end

  # GET /grsi_items/1/edit
  def edit
  end

  # POST /grsi_items
  # POST /grsi_items.json
  def create
    @grsi_item = GrsiItem.new(grsi_item_params)

    respond_to do |format|
      if @grsi_item.save
        format.html { redirect_to @grsi_item, notice: 'Grsi item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grsi_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @grsi_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grsi_items/1
  # PATCH/PUT /grsi_items/1.json
  def update
    respond_to do |format|
      if @grsi_item.update(grsi_item_params)
        format.html { redirect_to @grsi_item, notice: 'Grsi item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grsi_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grsi_items/1
  # DELETE /grsi_items/1.json
  def destroy
    @grsi_item.destroy
    respond_to do |format|
      format.html { redirect_to grsi_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grsi_item
      @grsi_item = GrsiItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grsi_item_params
      params.require(:grsi_item).permit(:reestr_nmbr, :reestr_name, :reestr_type, :factory, :country, :valid_until, :mpi_year)
    end
end
