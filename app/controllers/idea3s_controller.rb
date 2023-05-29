class Idea3sController < ApplicationController
  before_action :set_idea3, only: %i[ show edit update destroy ]

  # GET /idea3s or /idea3s.json
  def index
    @idea3s = Idea3.all
  end

  # GET /idea3s/1 or /idea3s/1.json
  def show
  end

  # GET /idea3s/new
  def new
    @idea3 = Idea3.new
  end

  # GET /idea3s/1/edit
  def edit
  end

  # POST /idea3s or /idea3s.json
  def create
    @idea3 = Idea3.new(idea3_params)

    respond_to do |format|
      if @idea3.save
        format.html { redirect_to idea3_url(@idea3), notice: "Idea3 was successfully created." }
        format.json { render :show, status: :created, location: @idea3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idea3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea3s/1 or /idea3s/1.json
  def update
    respond_to do |format|
      if @idea3.update(idea3_params)
        format.html { redirect_to idea3_url(@idea3), notice: "Idea3 was successfully updated." }
        format.json { render :show, status: :ok, location: @idea3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea3s/1 or /idea3s/1.json
  def destroy
    @idea3.destroy

    respond_to do |format|
      format.html { redirect_to idea3s_url, notice: "Idea3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea3
      @idea3 = Idea3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea3_params
      params.require(:idea3).permit(:name, :description, :picture, :price)
    end
end
