class RecommandationsController < ApplicationController
  before_action :set_recommandation, only: [:edit, :update, :destroy]

  # GET /recommandations
  def index
    @recommandations = Recommandation.all
  end

  # GET /recommandations/new
  def new
    @recommandation = Recommandation.new
  end

  # GET /recommandations/1/edit
  def edit
  end

  # POST /recommandations
  def create
    @recommandation = Recommandation.new(recommandation_params)

    if @recommandation.save
      redirect_to @recommandation, notice: 'Recommandation was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /recommandations/1
  def update
    if @recommandation.update(recommandation_params)
      redirect_to @recommandation, notice: 'Recommandation was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /recommandations/1
  def destroy
    @recommandation.destroy
    redirect_to recommandations_url, notice: 'Recommandation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommandation
      @recommandation = Recommandation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recommandation_params
      params.require(:recommandation).permit(:title,:description, :year)
    end
end
