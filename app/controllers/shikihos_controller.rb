class ShikihosController < ApplicationController
  before_action :set_shikiho, only: [:show, :edit, :update, :destroy]

  # GET /shikihos
  # GET /shikihos.json
  def index
    @shikihos = Shikiho.all
  end

  # GET /shikihos/1
  # GET /shikihos/1.json
  def show
  end

  # GET /shikihos/new
  def new
    @shikiho = Shikiho.new
  end

  # GET /shikihos/1/edit
  def edit
  end

  # POST /shikihos
  # POST /shikihos.json
  def create
    @shikiho = Shikiho.new(shikiho_params)

    respond_to do |format|
      if @shikiho.save
        format.html { redirect_to @shikiho, notice: 'Shikiho was successfully created.' }
        format.json { render :show, status: :created, location: @shikiho }
      else
        format.html { render :new }
        format.json { render json: @shikiho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shikihos/1
  # PATCH/PUT /shikihos/1.json
  def update
    respond_to do |format|
      if @shikiho.update(shikiho_params)
        format.html { redirect_to @shikiho, notice: 'Shikiho was successfully updated.' }
        format.json { render :show, status: :ok, location: @shikiho }
      else
        format.html { render :edit }
        format.json { render json: @shikiho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shikihos/1
  # DELETE /shikihos/1.json
  def destroy
    @shikiho.destroy
    respond_to do |format|
      format.html { redirect_to shikihos_url, notice: 'Shikiho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shikiho
      @shikiho = Shikiho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shikiho_params
      params.fetch(:shikiho, {})
    end
end
