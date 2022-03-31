class BlaguesController < ApplicationController
  before_action :set_blague, only: %i[ show edit update destroy ]

  # GET /blagues or /blagues.json
  def index
    @blagues = Blague.all
  end

  # GET /blagues/1 or /blagues/1.json
  def show
  end

  # GET /blagues/new
  def new
    @blague = Blague.new
  end

  # GET /blagues/1/edit
  def edit
  end

  # POST /blagues or /blagues.json
  def create
    @blague = Blague.new(blague_params)

    respond_to do |format|
      if @blague.save
        format.html { redirect_to blague_url(@blague), notice: "Blague was successfully created." }
        format.json { render :show, status: :created, location: @blague }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blague.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blagues/1 or /blagues/1.json
  def update
    respond_to do |format|
      if @blague.update(blague_params)
        format.html { redirect_to blague_url(@blague), notice: "Blague was successfully updated." }
        format.json { render :show, status: :ok, location: @blague }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blague.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blagues/1 or /blagues/1.json
  def destroy
    @blague.destroy

    respond_to do |format|
      format.html { redirect_to blagues_url, notice: "Blague was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blague
      @blague = Blague.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blague_params
      params.require(:blague).permit(:content)
    end
end
