class ChkboxesController < ApplicationController
  before_action :set_chkbox, only: [:show, :edit, :update, :destroy]

  # GET /chkboxes
  # GET /chkboxes.json
  def index
    @chkboxes = Chkbox.all
  end

  # GET /chkboxes/1
  # GET /chkboxes/1.json
  def show
  end

  # GET /chkboxes/new
  def new
    @chkbox = Chkbox.new
  end

  # GET /chkboxes/1/edit
  def edit
  end

  # POST /chkboxes
  # POST /chkboxes.json
  def create
    @chkbox = Chkbox.new(chkbox_params)

    respond_to do |format|
      if @chkbox.save
        format.html { redirect_to @chkbox, notice: 'Chkbox was successfully created.' }
        format.json { render :show, status: :created, location: @chkbox }
      else
        format.html { render :new }
        format.json { render json: @chkbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chkboxes/1
  # PATCH/PUT /chkboxes/1.json
  def update
    respond_to do |format|
      if @chkbox.update(chkbox_params)
        format.html { redirect_to @chkbox, notice: 'Chkbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @chkbox }
      else
        format.html { render :edit }
        format.json { render json: @chkbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chkboxes/1
  # DELETE /chkboxes/1.json
  def destroy
    @chkbox.destroy
    respond_to do |format|
      format.html { redirect_to chkboxes_url, notice: 'Chkbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chkbox
      @chkbox = Chkbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chkbox_params
      params.require(:chkbox).permit(:hante, :suuji)
    end
end
