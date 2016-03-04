class TounamentNamesController < ApplicationController
  before_action :set_tounament_name, only: [:show, :edit, :update, :destroy]

  # GET /tounament_names
  # GET /tounament_names.json
  def index
    @tounament_names = TounamentName.all
  end

  # GET /tounament_names/1
  # GET /tounament_names/1.json
  def show
  end

  # GET /tounament_names/new
  def new
    @tounament_name = TounamentName.new
  end

  # GET /tounament_names/1/edit
  def edit
  end

  # POST /tounament_names
  # POST /tounament_names.json
  def create
    @tounament_name = TounamentName.new(tounament_name_params)

    respond_to do |format|
      if @tounament_name.save
        format.html { redirect_to @tounament_name, notice: 'Tounament name was successfully created.' }
        format.json { render :show, status: :created, location: @tounament_name }
      else
        format.html { render :new }
        format.json { render json: @tounament_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tounament_names/1
  # PATCH/PUT /tounament_names/1.json
  def update
    respond_to do |format|
      if @tounament_name.update(tounament_name_params)
        format.html { redirect_to @tounament_name, notice: 'Tounament name was successfully updated.' }
        format.json { render :show, status: :ok, location: @tounament_name }
      else
        format.html { render :edit }
        format.json { render json: @tounament_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tounament_names/1
  # DELETE /tounament_names/1.json
  def destroy
    @tounament_name.destroy
    respond_to do |format|
      format.html { redirect_to tounament_names_url, notice: 'Tounament name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tounament_name
      @tounament_name = TounamentName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tounament_name_params
      params.require(:tounament_name).permit(:name)
    end
end
