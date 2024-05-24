class ProductItem1sController < ApplicationController
  before_action :set_product_item1, only: %i[ show edit update destroy ]

  # GET /product_item1s or /product_item1s.json
  def index
    @product_item1s = ProductItem1.paginate(page: params[:page])
  end

  # GET /product_item1s/1 or /product_item1s/1.json
  def show
  end

  # GET /product_item1s/new
  def new
    @product_item1 = ProductItem1.new
  end

  # GET /product_item1s/1/edit
  def edit
  end

  # POST /product_item1s or /product_item1s.json
  def create
    @product_item1 = ProductItem1.new(product_item1_params)

    respond_to do |format|
      if @product_item1.save
        NotifierMailer.alert_admin.deliver
        format.html { redirect_to product_item1_url(@product_item1), notice: "Product item1 was successfully created." }
        format.json { render :show, status: :created, location: @product_item1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_item1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_item1s/1 or /product_item1s/1.json
  def update
    respond_to do |format|
      if @product_item1.update(product_item1_params)
        format.html { redirect_to product_item1_url(@product_item1), notice: "Product item1 was successfully updated." }
        format.json { render :show, status: :ok, location: @product_item1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_item1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_item1s/1 or /product_item1s/1.json
  def destroy
    @product_item1.destroy

    respond_to do |format|
      format.html { redirect_to product_item1s_url, notice: "Product item1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_item1
      @product_item1 = ProductItem1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_item1_params
      params.require(:product_item1).permit(:name,  :price, :about_product, :product_image)
    end
end
