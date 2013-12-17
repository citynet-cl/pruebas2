class PorhacersController < ApplicationController
  before_action :set_porhacer, only: [:show, :edit, :update, :destroy]

  # GET /porhacers
  # GET /porhacers.json
  def index
    @porhacers = Porhacer.all
  end

  # GET /porhacers/1
  # GET /porhacers/1.json
  def show
  end

  # GET /porhacers/new
  def new
    @porhacer = Porhacer.new
  end

  # GET /porhacers/1/edit
  def edit
  end

  # POST /porhacers
  # POST /porhacers.json
  def create
    @porhacer = Porhacer.new(porhacer_params)

    respond_to do |format|
      if @porhacer.save
        format.html { redirect_to @porhacer, notice: 'Porhacer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @porhacer }
      else
        format.html { render action: 'new' }
        format.json { render json: @porhacer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /porhacers/1
  # PATCH/PUT /porhacers/1.json
  def update
    respond_to do |format|
      if @porhacer.update(porhacer_params)
        format.html { redirect_to @porhacer, notice: 'Porhacer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @porhacer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porhacers/1
  # DELETE /porhacers/1.json
  def destroy
    @porhacer.destroy
    respond_to do |format|
      format.html { redirect_to porhacers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_porhacer
      @porhacer = Porhacer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def porhacer_params
      params.require(:porhacer).permit(:titulo, :hecho)
    end
end
