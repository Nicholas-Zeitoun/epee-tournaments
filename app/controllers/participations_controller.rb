class ParticipationsController < ApplicationController
  before_action :set_participation, only: %i[ show edit update destroy ]

  # GET /participations or /participations.json
  def index
    @participations = Participation.all
  end

  # GET /participations/1 or /participations/1.json
  def show
  end

  # GET /participations/new
  def new
    @participation = Participation.new
  end

  # GET /participations/1/edit
  def edit
  end

  # POST /participations or /participations.json
  def create
    @tournament = Tournament.find(params[:tournament_id])
    @fencer = Fencer.find(params[:participation][:fencer_id])
    @participation = Participation.new(participation_params)
    @participation.tournament = @tournament
    @participation.fencer = @fencer
    if @participation.save
      redirect_to tournament_path(@tournament)
    else
      render 'tournaments/show'
    end

    # respond_to do |format|
    #   if @participation.save
    #     format.html { redirect_to @participation, notice: "Participation was successfully created." }
    #     format.json { render :show, status: :created, location: @participation }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @participation.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /participations/1 or /participations/1.json
  def update
    respond_to do |format|
      if @participation.update(participation_params)
        format.html { redirect_to @participation, notice: "Participation was successfully updated." }
        format.json { render :show, status: :ok, location: @participation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participations/1 or /participations/1.json
  def destroy
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Participation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def participation_params
      # params.fetch(:participation, {})
      params.permit(:participation, :tournament_id, :fencer_id)
    end
end
