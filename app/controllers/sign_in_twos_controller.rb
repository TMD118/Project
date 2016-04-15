class SignInTwosController < ApplicationController
  before_action :set_sign_in_two, only: [:show, :edit, :update, :destroy]

  # GET /sign_in_twos
  # GET /sign_in_twos.json
  def index
    @sign_in_twos = SignInTwo.all
  end

  # GET /sign_in_twos/1
  # GET /sign_in_twos/1.json
  def show
  end

  # GET /sign_in_twos/new
  def new
    @sign_in_two = SignInTwo.new
  end

  # GET /sign_in_twos/1/edit
  def edit
  end

  # POST /sign_in_twos
  # POST /sign_in_twos.json
  def create
    @sign_in_two = SignInTwo.new(sign_in_two_params)

    respond_to do |format|
      if @sign_in_two.save
        format.html { redirect_to @sign_in_two, notice: 'Sign in two was successfully created.' }
        format.json { render :show, status: :created, location: @sign_in_two }
      else
        format.html { render :new }
        format.json { render json: @sign_in_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_in_twos/1
  # PATCH/PUT /sign_in_twos/1.json
  def update
    respond_to do |format|
      if @sign_in_two.update(sign_in_two_params)
        format.html { redirect_to @sign_in_two, notice: 'Sign in two was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_in_two }
      else
        format.html { render :edit }
        format.json { render json: @sign_in_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_in_twos/1
  # DELETE /sign_in_twos/1.json
  def destroy
    @sign_in_two.destroy
    respond_to do |format|
      format.html { redirect_to sign_in_twos_url, notice: 'Sign in two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_in_two
      @sign_in_two = SignInTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_in_two_params
      params.require(:sign_in_two).permit(:name, :password, :doctorID)
    end
end
