class Idea5sController < ApplicationController
  before_action :set_idea5, only: %i[ show edit update destroy ]

  # GET /idea5s or /idea5s.json
  def index
    @idea5s = Idea5.all
  end

  # GET /idea5s/1 or /idea5s/1.json
  def show
  end

  # GET /idea5s/new
  def new
    @idea5 = Idea5.new
  end

  # GET /idea5s/1/edit
  def edit
  end

  # POST /idea5s or /idea5s.json
  def create
    @idea5 = Idea5.new(idea5_params)

    respond_to do |format|
      if @idea5.save
        format.html { redirect_to idea5_url(@idea5), notice: "Idea5 was successfully created." }
        format.json { render :show, status: :created, location: @idea5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idea5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea5s/1 or /idea5s/1.json
  def update
    respond_to do |format|
      if @idea5.update(idea5_params)
        format.html { redirect_to idea5_url(@idea5), notice: "Idea5 was successfully updated." }
        format.json { render :show, status: :ok, location: @idea5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea5s/1 or /idea5s/1.json
  def destroy
    @idea5.destroy

    respond_to do |format|
      format.html { redirect_to idea5s_url, notice: "Idea5 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea5
      @idea5 = Idea5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea5_params
      params.require(:idea5).permit(:name, :description, :picture, :price)
    end
end
