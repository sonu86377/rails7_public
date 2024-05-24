class EmployeeRsController < ApplicationController
  before_action :set_employee_r, only: %i[ show edit update destroy ]

  # GET /employee_rs or /employee_rs.json
  def index
    @employee_rs = EmployeeR.all
  end

  # GET /employee_rs/1 or /employee_rs/1.json
  def show
  end

  # GET /employee_rs/new
  def new
    @employee_r = EmployeeR.new
  end

  # GET /employee_rs/1/edit
  def edit
  end

  # POST /employee_rs or /employee_rs.json
  def create
    @employee_r = EmployeeR.new(employee_r_params)

    respond_to do |format|
      if @employee_r.save
        format.html { redirect_to employee_r_url(@employee_r), notice: "Employee r was successfully created." }
        format.json { render :show, status: :created, location: @employee_r }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_r.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_rs/1 or /employee_rs/1.json
  def update
    respond_to do |format|
      if @employee_r.update(employee_r_params)
        format.html { redirect_to employee_r_url(@employee_r), notice: "Employee r was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_r }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_r.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_rs/1 or /employee_rs/1.json
  def destroy
    @employee_r.destroy

    respond_to do |format|
      format.html { redirect_to employee_rs_url, notice: "Employee r was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_r
      @employee_r = EmployeeR.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_r_params
      params.require(:employee_r).permit(:name, :age, :salary, :company_id)
    end
end
