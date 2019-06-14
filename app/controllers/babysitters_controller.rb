class BabysittersController < ApplicationController
  before_action :set_babysitter, only: [:show, :edit, :update, :destroy]

  # GET /babysitters
  # GET /babysitters.json
  def index
    @babysitters = Babysitter.all
  end

  # GET /babysitters/1
  # GET /babysitters/1.json
  def show
  end

  # GET /babysitters/new
  def new
    @babysitter = Babysitter.new
  end

  # GET /babysitters/1/edit
  def edit
  end

  # POST /babysitters
  # POST /babysitters.json
  def create
    @babysitter = Babysitter.new(babysitter_params)

    respond_to do |format|
      if @babysitter.save
        format.html { redirect_to @babysitter, notice: 'Babysitter was successfully created.' }
        format.json { render :show, status: :created, location: @babysitter }
      else
        format.html { render :new }
        format.json { render json: @babysitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /babysitters/1
  # PATCH/PUT /babysitters/1.json
  def update
    respond_to do |format|
      if @babysitter.update(babysitter_params)
        format.html { redirect_to @babysitter, notice: 'Babysitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @babysitter }
      else
        format.html { render :edit }
        format.json { render json: @babysitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babysitters/1
  # DELETE /babysitters/1.json
  def destroy
    @babysitter.destroy
    respond_to do |format|
      format.html { redirect_to babysitters_url, notice: 'Babysitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_babysitter
      @babysitter = Babysitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def babysitter_params
      params.fetch(:babysitter, {})
    end
end
