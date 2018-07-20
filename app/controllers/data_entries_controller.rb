class DataEntriesController < ApplicationController
  before_action :set_data_entry, only: [:show, :edit, :update, :destroy]

  # GET /data_entries
  # GET /data_entries.json
  def index
    #@data_entries = DataEntry.all
  end

  # GET /data_entries/1
  # GET /data_entries/1.json
  def show
    @data_entry = DataEntry.find(params[:id])
    
  end

  # GET /data_entries/new
  def new
    #@data_entry = DataEntry.new
    @data_entry = DataEntry.new(form_id: params[:form_id])

  end

  # GET /data_entries/1/edit
  def edit
  end

  # POST /data_entries
  # POST /data_entries.json
  def create
    @data_entry = DataEntry.new(data_entry_params)
   

    respond_to do |format|
      if @data_entry.save
        format.html { redirect_to @data_entry, notice: 'Data entry was successfully created.' }
        format.json { render :show, status: :created, location: @data_entry }
      else
        format.html { render :new }
        format.json { render json: @data_entry.errors, status: :unprocessable_entity }
      end
    end
  end
  def index1
    
  end

  # PATCH/PUT /data_entries/1
  # PATCH/PUT /data_entries/1.json
  def update
    respond_to do |format|
      if @data_entry.update(data_entry_params)
        format.html { redirect_to @data_entry, notice: 'Data entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_entry }
      else
        format.html { render :edit }
        format.json { render json: @data_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_entries/1
  # DELETE /data_entries/1.json
  def destroy
    @data_entry.destroy
    respond_to do |format|
      format.html { redirect_to forms_path, notice: 'Data entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_entry
      @data_entry = DataEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_entry_params
      params.require(:data_entry).permit(:form_id).tap do |whitelisted|
        whitelisted[:properties] = params[:data_entry][:properties]
      end
    end
end


 