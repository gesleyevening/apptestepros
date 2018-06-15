class PropostesController < ApplicationController
  before_action :set_proposte, only: [:show, :edit, :update, :destroy]

  # GET /propostes
  # GET /propostes.json
  def index
    @propostes = Proposte.all
  end

  # GET /propostes/1
  # GET /propostes/1.json
  def show
  end

  # GET /propostes/new
  def new
    @proposte = Proposte.new
  end

  # GET /propostes/1/edit
  def edit
  end

  # POST /propostes
  # POST /propostes.json
  def create
    @proposte = Proposte.new(proposte_params)

    respond_to do |format|
      if @proposte.save
        format.html { redirect_to @proposte, notice: 'Proposte was successfully created.' }
        format.json { render :show, status: :created, location: @proposte }
      else
        format.html { render :new }
        format.json { render json: @proposte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propostes/1
  # PATCH/PUT /propostes/1.json
  def update
    respond_to do |format|
      if @proposte.update(proposte_params)
        format.html { redirect_to @proposte, notice: 'Proposte was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposte }
      else
        format.html { render :edit }
        format.json { render json: @proposte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propostes/1
  # DELETE /propostes/1.json
  def destroy
    @proposte.destroy
    respond_to do |format|
      format.html { redirect_to propostes_url, notice: 'Proposte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposte
      @proposte = Proposte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposte_params
      params.require(:proposte).permit(:nome, :descricao, :valor, :dataInicio, :dataFim, :cidade)
    end
end
