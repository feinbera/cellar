class BeerCellarsController < ApplicationController
  before_action :set_beer_cellar, only: [:show, :edit, :update, :destroy]

  # GET /beer_cellars
  # GET /beer_cellars.json
  def index
    @beer_cellars = BeerCellar.all
  end

  # GET /beer_cellars/1
  # GET /beer_cellars/1.json
  def show
  end

  # GET /beer_cellars/new
  def new
    @beer_cellar = BeerCellar.new
  end

  # GET /beer_cellars/1/edit
  def edit
  end

  # POST /beer_cellars
  # POST /beer_cellars.json
  def create
    @beer_cellar = BeerCellar.new(beer_cellar_params)

    respond_to do |format|
      if @beer_cellar.save
        format.html { redirect_to @beer_cellar, notice: 'Beer cellar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beer_cellar }
      else
        format.html { render action: 'new' }
        format.json { render json: @beer_cellar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_cellars/1
  # PATCH/PUT /beer_cellars/1.json
  def update
    respond_to do |format|
      if @beer_cellar.update(beer_cellar_params)
        format.html { redirect_to @beer_cellar, notice: 'Beer cellar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beer_cellar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_cellars/1
  # DELETE /beer_cellars/1.json
  def destroy
    @beer_cellar.destroy
    respond_to do |format|
      format.html { redirect_to beer_cellars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_cellar
      @beer_cellar = BeerCellar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_cellar_params
      params.require(:beer_cellar).permit(:name, :user_id, :flags)
    end
end
