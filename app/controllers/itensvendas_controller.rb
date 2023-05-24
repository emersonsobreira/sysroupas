class ItensvendasController < ApplicationController
  before_action :set_itensvenda, only: %i[ show edit update destroy ]

  # GET /itensvendas or /itensvendas.json
  def index
    @itensvendas = Itensvenda.all
  end

  # GET /itensvendas/1 or /itensvendas/1.json
  def show
  end

  # GET /itensvendas/new
  def new
    @itensvenda = Itensvenda.new
  end

  # GET /itensvendas/1/edit
  def edit
  end

  # POST /itensvendas or /itensvendas.json
  def create
    @itensvenda = Itensvenda.new(itensvenda_params)

    respond_to do |format|
      if @itensvenda.save
        format.html { redirect_to itensvenda_url(@itensvenda), notice: "Itensvenda was successfully created." }
        format.json { render :show, status: :created, location: @itensvenda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @itensvenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itensvendas/1 or /itensvendas/1.json
  def update
    respond_to do |format|
      if @itensvenda.update(itensvenda_params)
        format.html { redirect_to itensvenda_url(@itensvenda), notice: "Itensvenda was successfully updated." }
        format.json { render :show, status: :ok, location: @itensvenda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @itensvenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itensvendas/1 or /itensvendas/1.json
  def destroy
    @itensvenda.destroy

    respond_to do |format|
      format.html { redirect_to itensvendas_url, notice: "Itensvenda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itensvenda
      @itensvenda = Itensvenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def itensvenda_params
      params.require(:itensvenda).permit(:qtd, :produto_unitario, :preco_total, :produto_id, :venda_id)
    end
end
