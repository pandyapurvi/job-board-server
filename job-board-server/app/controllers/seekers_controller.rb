class SeekersController < ApplicationController

  def index
    @seekers = Seeker.all
  end

  def show
    @seeker = Seeker.find params[:id]
  end

  def new
    @seeker = Seeker.new
  end

  def create
    seeker = Seeker.create seeker_params
    redirect_to seekers_path
  end

  def edit
    @seeker = Seeker.find params[:id]
  end

  def update
    seeker = Seeker.find params[:id]
    seeker.update seeker_params
    redirect_to seeker_path
  end

  def destroy
    seeker = Seeker.find params[:id]
    seeker.destroy
    redirect_to seekers_path
  end
  private
  def seeker_params
    params.require(:seeker).permit(:name, :emailid, :pnone, :social_link, :resume, :cover_letter, :experience_year, :notice, :current_title, :user_id)
  end
end
