class StudentAppCatRegnosController < ApplicationController
  before_action :set_student_app_cat_regno, only: [:show, :edit, :update, :destroy]

  # GET /student_app_cat_regnos
  # GET /student_app_cat_regnos.json
  def index
    @student_app_cat_regnos = StudentAppCatRegno.all
  end

  # GET /student_app_cat_regnos/1
  # GET /student_app_cat_regnos/1.json
  def show
  end

  # GET /student_app_cat_regnos/new
  def new
    @student_app_cat_regno = StudentAppCatRegno.new
  end

  # GET /student_app_cat_regnos/1/edit
  def edit
  end

  # POST /student_app_cat_regnos
  # POST /student_app_cat_regnos.json
  def create
    @student_app_cat_regno = StudentAppCatRegno.new(student_app_cat_regno_params)

    respond_to do |format|
      if @student_app_cat_regno.save
        format.html { redirect_to @student_app_cat_regno, notice: 'Student app cat regno was successfully created.' }
        format.json { render :show, status: :created, location: @student_app_cat_regno }
      else
        format.html { render :new }
        format.json { render json: @student_app_cat_regno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_app_cat_regnos/1
  # PATCH/PUT /student_app_cat_regnos/1.json
  def update
    respond_to do |format|
      if @student_app_cat_regno.update(student_app_cat_regno_params)
        format.html { redirect_to @student_app_cat_regno, notice: 'Student app cat regno was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_app_cat_regno }
      else
        format.html { render :edit }
        format.json { render json: @student_app_cat_regno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_app_cat_regnos/1
  # DELETE /student_app_cat_regnos/1.json
  def destroy
    @student_app_cat_regno.destroy
    respond_to do |format|
      format.html { redirect_to student_app_cat_regnos_url, notice: 'Student app cat regno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_app_cat_regno
      @student_app_cat_regno = StudentAppCatRegno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_app_cat_regno_params
      params.require(:student_app_cat_regno).permit(:registrationnumber, :firstname, :lastname)
    end
end
