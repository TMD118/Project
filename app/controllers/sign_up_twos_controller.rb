class SignUpTwosController < ApplicationController
  before_action :set_sign_up_two, only: [:show, :edit, :update, :destroy]

  # GET /sign_up_twos
  # GET /sign_up_twos.json
  def index
    @sign_up_twos = SignUpTwo.all
  end

  # GET /sign_up_twos/1
  # GET /sign_up_twos/1.json
  def show
  end

  # GET /sign_up_twos/new
  def new
    @sign_up_two = SignUpTwo.new
  end

  # GET /sign_up_twos/1/edit
  def edit
  end

  # POST /sign_up_twos
  # POST /sign_up_twos.json
  def create
    @sign_up_two = SignUpTwo.new(sign_up_two_params)

    respond_to do |format|
      if @sign_up_two.save
        format.html { redirect_to @sign_up_two, notice: 'Sign up two was successfully created.' }
        format.json { render :show, status: :created, location: @sign_up_two }
      else
        format.html { render :new }
        format.json { render json: @sign_up_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_up_twos/1
  # PATCH/PUT /sign_up_twos/1.json
  def update
    respond_to do |format|
      if @sign_up_two.update(sign_up_two_params)
        format.html { redirect_to @sign_up_two, notice: 'Sign up two was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_up_two }
      else
        format.html { render :edit }
        format.json { render json: @sign_up_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_up_twos/1
  # DELETE /sign_up_twos/1.json
  def destroy
    @sign_up_two.destroy
    respond_to do |format|
      format.html { redirect_to sign_up_twos_url, notice: 'Sign up two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_up_two
      @sign_up_two = SignUpTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_up_two_params
      params.require(:sign_up_two).permit(:firstname, :middlename, :lastname, :username, :PMDCno, :email, :phoneno, :cellno, :dateofbirth, :password, :confirmpassword, :speciality, :city, :institution, :officehourstart, :officehourend)
    end
end
