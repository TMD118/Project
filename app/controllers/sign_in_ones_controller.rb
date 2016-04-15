class SignInOnesController < ApplicationController
  before_action :set_sign_in_one, only: [:show, :edit, :update, :destroy]

  # GET /sign_in_ones
  # GET /sign_in_ones.json
  def index
    @sign_in_ones = SignInOne.all
    
    if params[:search]
      @sign_in_ones = SignInOne.search(params[:search]).order("created_at DESC")
    else
      @sign_in_ones = SignInOne.all.order('created_at DESC')
    end
  end

  # GET /sign_in_ones/1
  # GET /sign_in_ones/1.json
  def show
  end

  # GET /sign_in_ones/new
  def new
    @sign_in_one = SignInOne.new
  end

  # GET /sign_in_ones/1/edit
  def edit
  end

  # POST /sign_in_ones
  # POST /sign_in_ones.json
  def create
    @sign_in_one = SignInOne.new(sign_in_one_params)

    respond_to do |format|
      if @sign_in_one.save
        format.html { redirect_to @sign_in_one, notice: 'Sign in one was successfully created.' }
        format.json { render :show, status: :created, location: @sign_in_one }
      else
        format.html { render :new }
        format.json { render json: @sign_in_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_in_ones/1
  # PATCH/PUT /sign_in_ones/1.json
  def update
    respond_to do |format|
      if @sign_in_one.update(sign_in_one_params)
        format.html { redirect_to @sign_in_one, notice: 'Sign in one was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_in_one }
      else
        format.html { render :edit }
        format.json { render json: @sign_in_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_in_ones/1
  # DELETE /sign_in_ones/1.json
  def destroy
    @sign_in_one.destroy
    respond_to do |format|
      format.html { redirect_to sign_in_ones_url, notice: 'Sign in one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_in_one
      @sign_in_one = SignInOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_in_one_params
      params.require(:sign_in_one).permit(:name, :password)
    end
end
