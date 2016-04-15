class SignUpOnesController < ApplicationController
  before_action :set_sign_up_one, only: [:show, :edit, :update, :destroy]

  # GET /sign_up_ones
  # GET /sign_up_ones.json
  def index
    @sign_up_ones = SignUpOne.all
  end

  # GET /sign_up_ones/1
  # GET /sign_up_ones/1.json
  def show
  end

  # GET /sign_up_ones/new
  def new
    @sign_up_one = SignUpOne.new
  end

  # GET /sign_up_ones/1/edit
  def edit
  end

  # POST /sign_up_ones
  # POST /sign_up_ones.json
  def create
    @sign_up_one = SignUpOne.new(sign_up_one_params)

    respond_to do |format|
      if @sign_up_one.save
        format.html { redirect_to @sign_up_one, notice: 'Sign up one was successfully created.' }
        format.json { render :show, status: :created, location: @sign_up_one }
      else
        format.html { render :new }
        format.json { render json: @sign_up_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_up_ones/1
  # PATCH/PUT /sign_up_ones/1.json
  def update
    respond_to do |format|
      if @sign_up_one.update(sign_up_one_params)
        format.html { redirect_to @sign_up_one, notice: 'Sign up one was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_up_one }
      else
        format.html { render :edit }
        format.json { render json: @sign_up_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_up_ones/1
  # DELETE /sign_up_ones/1.json
  def destroy
    @sign_up_one.destroy
    respond_to do |format|
      format.html { redirect_to sign_up_ones_url, notice: 'Sign up one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_up_one
      @sign_up_one = SignUpOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_up_one_params
      params.require(:sign_up_one).permit(:firstname, :middlename, :lastname, :username, :email, :phoneno, :cellno, :city, :dateofbirth, :password, :confirmpassword)
    end
end
