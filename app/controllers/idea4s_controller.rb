class Idea4sController < ApplicationController
  before_action :set_idea4, only: %i[ show edit update destroy ]

  # GET /idea4s or /idea4s.json
  def index
    @idea4s = Idea4.all
  end

  # GET /idea4s/1 or /idea4s/1.json
  def show
  end

  # GET /idea4s/new
  def new
    @idea4 = Idea4.new
  end

  # GET /idea4s/1/edit
  def edit
  end

  # POST /idea4s or /idea4s.json
  def create
    @idea4 = Idea4.new(idea4_params)

    respond_to do |format|
      if @idea4.save
        format.html { redirect_to idea4_url(@idea4), notice: "Idea4 was successfully created." }
        format.json { render :show, status: :created, location: @idea4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idea4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea4s/1 or /idea4s/1.json
  def update
    respond_to do |format|
      if @idea4.update(idea4_params)
        format.html { redirect_to idea4_url(@idea4), notice: "Idea4 was successfully updated." }
        format.json { render :show, status: :ok, location: @idea4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea4s/1 or /idea4s/1.json
  def destroy
    @idea4.destroy

    respond_to do |format|
      format.html { redirect_to idea4s_url, notice: "Idea4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea4
      @idea4 = Idea4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea4_params
      params.require(:idea4).permit(:name, :description, :picture, :price)
    end
end
