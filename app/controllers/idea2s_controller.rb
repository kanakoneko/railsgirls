class Idea2sController < ApplicationController
  before_action :set_idea2, only: %i[ show edit update destroy ]

  # GET /idea2s or /idea2s.json
  def index
    @idea2s = Idea2.all
  end

  # GET /idea2s/1 or /idea2s/1.json
  def show
  end

  # GET /idea2s/new
  def new
    @idea2 = Idea2.new
  end

  # GET /idea2s/1/edit
  def edit
  end

  # POST /idea2s or /idea2s.json
  def create
    @idea2 = Idea2.new(idea2_params)

    respond_to do |format|
      if @idea2.save
        format.html { redirect_to idea2_url(@idea2), notice: "Idea2 was successfully created." }
        format.json { render :show, status: :created, location: @idea2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idea2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea2s/1 or /idea2s/1.json
  def update
    respond_to do |format|
      if @idea2.update(idea2_params)
        format.html { redirect_to idea2_url(@idea2), notice: "Idea2 was successfully updated." }
        format.json { render :show, status: :ok, location: @idea2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idea2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea2s/1 or /idea2s/1.json
  def destroy
    @idea2.destroy

    respond_to do |format|
      format.html { redirect_to idea2s_url, notice: "Idea2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea2
      @idea2 = Idea2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea2_params
      params.require(:idea2).permit(:name, :description, :picture, :table)
    end
end
