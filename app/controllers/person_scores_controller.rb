class PersonScoresController < ApplicationController
  before_action :set_person_score, only: [:show, :edit, :update, :destroy]

  # GET /person_scores
  # GET /person_scores.json
  def index
    @person_scores = PersonScore.all
  end

  # GET /person_scores/1
  # GET /person_scores/1.json
  def show
  end

  # GET /person_scores/new
  def new
    @person_score = PersonScore.new
  end

  # GET /person_scores/1/edit
  def edit
  end

  # POST /person_scores
  # POST /person_scores.json
  def create
    @person_score = PersonScore.new(person_score_params)

    respond_to do |format|
      if @person_score.save
        format.html { redirect_to @person_score, notice: 'Person score was successfully created.' }
        format.json { render :show, status: :created, location: @person_score }
      else
        format.html { render :new }
        format.json { render json: @person_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_scores/1
  # PATCH/PUT /person_scores/1.json
  def update
    respond_to do |format|
      if @person_score.update(person_score_params)
        format.html { redirect_to @person_score, notice: 'Person score was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_score }
      else
        format.html { render :edit }
        format.json { render json: @person_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_scores/1
  # DELETE /person_scores/1.json
  def destroy
    @person_score.destroy
    respond_to do |format|
      format.html { redirect_to person_scores_url, notice: 'Person score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_score
      @person_score = PersonScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_score_params
      params.require(:person_score).permit(:name, :score, :hi_score, :create, :update)
    end
end
