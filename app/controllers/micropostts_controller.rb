class MicroposttsController < ApplicationController
  before_action :set_micropostt, only: [:show, :edit, :update, :destroy]

  # GET /micropostts
  # GET /micropostts.json
  def index
    @micropostts = Micropostt.all
  end

  # GET /micropostts/1
  # GET /micropostts/1.json
  def show
  end

  # GET /micropostts/new
  def new
    @micropostt = Micropostt.new
  end

  # GET /micropostts/1/edit
  def edit
  end

  # POST /micropostts
  # POST /micropostts.json
  def create
    @micropostt = Micropostt.new(micropostt_params)

    respond_to do |format|
      if @micropostt.save
        format.html { redirect_to @micropostt, notice: 'Micropostt was successfully created.' }
        format.json { render :show, status: :created, location: @micropostt }
      else
        format.html { render :new }
        format.json { render json: @micropostt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropostts/1
  # PATCH/PUT /micropostts/1.json
  def update
    respond_to do |format|
      if @micropostt.update(micropostt_params)
        format.html { redirect_to @micropostt, notice: 'Micropostt was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropostt }
      else
        format.html { render :edit }
        format.json { render json: @micropostt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropostts/1
  # DELETE /micropostts/1.json
  def destroy
    @micropostt.destroy
    respond_to do |format|
      format.html { redirect_to micropostts_url, notice: 'Micropostt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropostt
      @micropostt = Micropostt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropostt_params
      params.require(:micropostt).permit(:content, :user_id)
    end
end
