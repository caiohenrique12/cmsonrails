class ConteudosController < ApplicationController
  before_action :set_conteudo, only: [:show, :edit, :update, :destroy]

  # GET /conteudos
  # GET /conteudos.json
  def index
    @conteudos = Conteudo.all
  end

  # GET /conteudos/1
  # GET /conteudos/1.json
  def show
  end

  # GET /conteudos/new
  def new
    @conteudo = Conteudo.new
  end

  # GET /conteudos/1/edit
  def edit
  end

  # POST /conteudos
  # POST /conteudos.json
  def create
    @conteudo = Conteudo.new(conteudo_params)

    respond_to do |format|
      if @conteudo.save
        format.html { redirect_to @conteudo, notice: 'Conteudo was successfully created.' }
        format.json { render :show, status: :created, location: @conteudo }
      else
        format.html { render :new }
        format.json { render json: @conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conteudos/1
  # PATCH/PUT /conteudos/1.json
  def update
    respond_to do |format|
      if @conteudo.update(conteudo_params)
        format.html { redirect_to @conteudo, notice: 'Conteudo was successfully updated.' }
        format.json { render :show, status: :ok, location: @conteudo }
      else
        format.html { render :edit }
        format.json { render json: @conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conteudos/1
  # DELETE /conteudos/1.json
  def destroy
    @conteudo.destroy
    respond_to do |format|
      format.html { redirect_to conteudos_url, notice: 'Conteudo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conteudo
      @conteudo = Conteudo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conteudo_params
      params.require(:conteudo).permit(:titulo, :subtitulo, :texto, :image)
    end
end
