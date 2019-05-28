class SeekersController < ApplicationController
# before_action :set_secret, only: [:show, :edit, :update, :destroy]

  # def index
  #   @seekers = Seeker.all
  #   render json: @seekers
  # end

  def index
    @seekers = Seeker.all
    respond_to do |format|
      format.html
      format.json { render :json => @seekers }
    end
  end

  def show
    @seeker = Seeker.find params[:id]
  end

  def new
    @seeker = Seeker.new
  end

  def create
    seeker = Seeker.new seeker_params
    respond_to do |format|
      if @seeker.save
        format.html { redirect_to @seeker }
        format.json { render :json => @seeker }
      else
        format.html { render :new }
        format.json { render json: @seeker.errors }
      end
    end
  end

  def edit
    @seeker = Seeker.find params[:id]
  end

  def update
    seeker = Seeker.find params[:id]
    respond_to do |format|
      if seeker.update seeker_params
        format.html { redirect_to @seeker }
        format.json { render :json => @seeker }
      else
        format.html { render :edit }
        format.json { render json: @seeker.errors}
      end
    end
  end

  def destroy
    seeker = Seeker.find params[:id]
    seeker.destroy
    respond_to do |format|
      format.html { redirect_to seekers_path }#seelers_url?
    format.json { head :no_content }
    end
  end
  private
  def seeker_params
    params.require(:seeker).permit(:name, :emailid, :pnone, :social_link, :resume, :cover_letter, :experience_year, :notice, :current_title, :user_id)
  end
end
