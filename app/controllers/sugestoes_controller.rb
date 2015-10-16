class SugestoesController < ApplicationController
  before_action :set_sugestao, only: [:show, :edit, :update, :destroy]

  # GET /sugestoes
  # GET /sugestoes.json
  def index
    @sugestoes = Sugestao.all
  end

  # GET /sugestoes/1
  # GET /sugestoes/1.json
  def show
  end

  # GET /sugestoes/new
  def new
    @sugestao = Sugestao.new
  end

  # GET /sugestoes/1/edit
  def edit
  end

  # POST /sugestoes
  # POST /sugestoes.json
  def create
    @sugestao = Sugestao.new(sugestao_params)

    respond_to do |format|
      if @sugestao.save
        format.html { redirect_to @sugestao, notice: 'Sugestao was successfully created.' }
        format.json { render :show, status: :created, location: @sugestao }
      else
        format.html { render :new }
        format.json { render json: @sugestao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sugestoes/1
  # PATCH/PUT /sugestoes/1.json
  def update
    respond_to do |format|
      if @sugestao.update(sugestao_params)
        format.html { redirect_to @sugestao, notice: 'Sugestao was successfully updated.' }
        format.json { render :show, status: :ok, location: @sugestao }
      else
        format.html { render :edit }
        format.json { render json: @sugestao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugestoes/1
  # DELETE /sugestoes/1.json
  def destroy
    @sugestao.destroy
    respond_to do |format|
      format.html { redirect_to sugestoes_url, notice: 'Sugestao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sugestao
      @sugestao = Sugestao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sugestao_params
      params.require(:sugestao).permit(:nome, :email, :telefone, :texto)
    end
end
