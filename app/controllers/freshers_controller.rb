class FreshersController < ApplicationController
  before_action :set_fresher, only: [:show, :edit, :update, :destroy]

  # GET /freshers
  # GET /freshers.json
  def index
    @freshers = Fresher.all
  end

  # GET /freshers/1
  # GET /freshers/1.json
  def show
  end

  # GET /freshers/new
  def new
    @fresher = Fresher.new
  end

  # GET /freshers/1/edit
  def edit
  end

  # POST /freshers
  # POST /freshers.json
  def create
    @fresher = Fresher.new(fresher_params)

    respond_to do |format|
      if @fresher.save
        format.html { redirect_to thanks_path, notice: 'Your Information has been submitted!' }
        format.json { render :show, status: :created, location: @fresher }
      else
        format.html { render :new }
        format.json { render json: @fresher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freshers/1
  # PATCH/PUT /freshers/1.json
  def update
    respond_to do |format|
      if @fresher.update(fresher_params)
        format.html { redirect_to @fresher, notice: 'Fresher was successfully updated.' }
        format.json { render :show, status: :ok, location: @fresher }
      else
        format.html { render :edit }
        format.json { render json: @fresher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freshers/1
  # DELETE /freshers/1.json
  def destroy
    @fresher.destroy
    respond_to do |format|
      format.html { redirect_to freshers_url, notice: 'Fresher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fresher
      @fresher = Fresher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fresher_params
      params.require(:fresher).permit(:name, :about, :enroll, :skills, :email, :contact, :room, :branch, :interests)
    end
end
