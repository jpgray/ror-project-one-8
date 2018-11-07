class DuelistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_duelist, only: [:show, :edit, :update, :destroy]

  # GET /duelists
  # GET /duelists.json
  def index
    @duelists = Duelist.all
  end

  # GET /duelists/1
  # GET /duelists/1.json
  def show
    @cards = Card.where(:duelist_id == @duelist.id)
  end

  # GET /duelists/new
  def new
    @duelist = Duelist.new
  end

  # GET /duelists/1/edit
  def edit
    if current_user != @duelist.user
      redirect_to @duelist
    end
  end

  # POST /duelists
  # POST /duelists.json
  def create
    @duelist = Duelist.new(duelist_params)

    respond_to do |format|
      if @duelist.save
        format.html { redirect_to @duelist, notice: 'Duelist was successfully created.' }
        format.json { render :show, status: :created, location: @duelist }
      else
        format.html { render :new }
        format.json { render json: @duelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duelists/1
  # PATCH/PUT /duelists/1.json
  def update
    respond_to do |format|
      if @duelist.update(duelist_params)
        format.html { redirect_to @duelist, notice: 'Duelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @duelist }
      else
        format.html { render :edit }
        format.json { render json: @duelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duelists/1
  # DELETE /duelists/1.json
  def destroy
    @duelist.destroy
    respond_to do |format|
      format.html { redirect_to duelists_url, notice: 'Duelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duelist
      @duelist = Duelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duelist_params
      params.require(:duelist).permit(:name, :age, :rating, :favourite_card, :picture, :user_id)
    end
end
