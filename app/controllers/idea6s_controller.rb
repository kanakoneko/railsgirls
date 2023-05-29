class Idea6sController < ApplicationController
  before_action :set_idea6, only: %i[ show edit update destroy ]

  # GET /idea6s or /idea6s.json
  def index
    @idea6s = Idea6.all
  end

  # GET /idea6s/1 or /idea6s/1.json
  def show
  end

  # GET /idea6s/new
  def new
    @idea6 = Idea6.new
  end

  # GET /idea6s/1/edit
  def edit
  end

  # POST /idea6s or /idea6s.json
  def create
    @idea6 = Idea6.new(idea6_params)

    respond_to do |format|
      if @idea6.save
        format.html { redirect_to idea6_url(@idea6), notice: "Idea6 was successfully created." }
        format.json { render :show, status: :created, location: @idea6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idea6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea6s/1 or /idea6s/1.json
  def update
    respond_to do |format|
      if @idea6.update(idea6_params)
        format.html { redirect_to idea6_url(@idea6), notice: "Idea6 was successfully updated." }
        format.json { render :show, status: :ok, location: @idea6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea6s/1 or /idea6s/1.json
  def destroy
    @idea6.destroy

    respond_to do |format|
      format.html { redirect_to idea6s_url, notice: "Idea6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea6
      @idea6 = Idea6.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea6_params
      params.require(:idea6).permit(:name, :description, :picture, :price, :table, :aaa, :eee, :kkk)
    end
end
