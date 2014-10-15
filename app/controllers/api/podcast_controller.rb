class Api::PodcastController < Api::ApplicationController
  before_filter :find_podcast
  before_filter :find_episodes

  def show
    render json: @podcast
  end

  def update
    @podcast.update_attributes(podcast_params)
    render json: @podcast
  end

  private

  def find_podcast
    @podcast = Podcast.first
  end

  def find_episodes
    @episodes = @podcast.episodes
  end

  def podcast_params
    params.require(:podcast).permit(:title, :link, :language, :copyright, :subtitle, :author, :summary, :description, :owner_name, :owner_email, :logo_url, :category)
  end
end
