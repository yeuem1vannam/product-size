class ProductsSizesController < ApplicationController
  before_action :set_products_size, only: [:show, :edit, :update, :destroy]

  # GET /products_sizes
  # GET /products_sizes.json
  def index
    @products_sizes = ProductsSize.all
  end

  # GET /products_sizes/1
  # GET /products_sizes/1.json
  def show
  end

  # GET /products_sizes/new
  def new
    @products_size = ProductsSize.new
  end

  # GET /products_sizes/1/edit
  def edit
  end

  # POST /products_sizes
  # POST /products_sizes.json
  def create
    @products_size = ProductsSize.new(products_size_params)

    respond_to do |format|
      if @products_size.save
        format.html { redirect_to @products_size, notice: 'Products size was successfully created.' }
        format.json { render :show, status: :created, location: @products_size }
      else
        format.html { render :new }
        format.json { render json: @products_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_sizes/1
  # PATCH/PUT /products_sizes/1.json
  def update
    respond_to do |format|
      if @products_size.update(products_size_params)
        format.html { redirect_to @products_size, notice: 'Products size was successfully updated.' }
        format.json { render :show, status: :ok, location: @products_size }
      else
        format.html { render :edit }
        format.json { render json: @products_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_sizes/1
  # DELETE /products_sizes/1.json
  def destroy
    @products_size.destroy
    respond_to do |format|
      format.html { redirect_to products_sizes_url, notice: 'Products size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_size
      @products_size = ProductsSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def products_size_params
      params.require(:products_size).permit(:size_id, :product_id, :price)
    end
end
