class ShikihosController < ApplicationController
  before_action :set_shikiho, only: [:show, :edit, :update, :destroy]

  # GET /shikihos
  # GET /shikihos.json
  def index
    @search_params = params
    @year = params['year'].present? ? params['year'] : 2020
    quarter = params['quarter'].present? ? params['quarter'] : 1

    @shikihos = Shikiho.all
    @shikihos = @shikihos.year_equal(@year)
    @shikihos = @shikihos.quarter_equal(quarter)
    @shikihos = @shikihos.code_like(params[:code]) if params[:code].present?
    @shikihos = @shikihos.comp_name_like(params[:comp_name]) if params[:comp_name].present?
    @shikihos = @shikihos.topic_like(params[:topic]) if params[:topic].present?
    @shikihos = @shikihos.feature_like(params[:feature]) if params[:feature].present?
    @shikihos = @shikihos.outlook_like(params[:outlook]) if params[:outlook].present?
    @shikihos = @shikihos.order(:code).page(params[:page]).per(20)
    @quarter = self.get_quarter_from_num(quarter)
  end

  def get_quarter_from_num(quarter)
    case quarter
    when '1' then
      '春'
    when '2' then
      '夏'
    when '3' then
      '秋'
    when '4' then
      '冬'
    end
  end

  # GET /shikihos/1
  # GET /shikihos/1.json
  def show
    @quarter = self.get_quarter_from_num(@shikiho.quarter.to_s)
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
