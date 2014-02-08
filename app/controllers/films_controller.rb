class FilmsController < ApplicationController
  before_action :authenticate_user!, except: [:list, :new, :create]
  before_action :set_film, only: [:edit, :update, :destroy]

  def index
    @films = Film.all
  end

  def list
    @films = Film.planned.all
  end

  def new
    @film = Film.new
  end

  def edit
  end

  # POST /films
  def create
    @film = Film.new(user_signed_in? ? film_params : recommandation_params)

    if @film.save
      redirect_to root_path, notice: t('films.added')
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /films/1
  def update
    if @film.update(film_params)
      redirect_to edit_film_path(@film), notice: t('films.added')
    end
  end

  # DELETE /films/1
  def destroy
    @film.destroy
    redirect_to films_url, notice: t('films.failed')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    def film_params
      params.require(:film).permit(:title,:description, :year, :recommended_by, :category_id, :director_id, :planned_at, :seen_at, :rate)
    end

    # Only allow a trusted parameter "white list" through.
    def recommandation_params
      params.require(:film).permit(:title,:description, :year, :recommended_by)
    end
end
