class PetHistoriesController < ApplicationController
  before_action :set_pet_history, only: %i[ :show, :edit, :update, :destroy ]

  # GET /pet_histories
  # GET /pet_histories.json
  def index
    
    @pet_histories = PetHistory.all
  
  end

  # GET /pet_histories/1
  # GET /pet_histories/1.json
  def show
    
    
  end

  # GET /pet_histories/new
  def new
    @pet_history = PetHistory.new
    @pets = Pet.all
   
  end

  # GET /pet_histories/1/edit
  def edit
    @pets = Pet.all
  end

  # POST /pet_histories
  # POST /pet_histories.json
  def create
    @pet_history = PetHistory.new(pet_history_params)
    #@pet_history.client_id = @pet_history.pet.client_id 

    respond_to do |format|
      if @pet_history.save
        format.html { redirect_to pet_history_url(@pet_history), notice: "Registro de historial creado con éxito." }
        format.json { render :show, status: :created, location: @pet_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_histories/1
  # PATCH/PUT /pet_histories/1.json
  def update
   
    respond_to do |format|
      if @pet_history.update(pet_history_params)
        format.html { redirect_to pet_history_url(@pet_history), notice: 'Historial agregado.' }
        format.json { render :show, status: :ok, location: @pet_history }
        
      else
        format.html { render :edit }
        format.json { render json: @pet_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_histories/1
  # DELETE /pet_histories/1.json
  def destroy
    @pet_history.destroy
    respond_to do |format|
      format.html { redirect_to pet_histories_url, notice: 'Historial eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_history
      @pet_history = PetHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_history_params
      params.require(:pet_history).permit(:weight, :heigth, :description, :pet_id, :client_id)
    end
end