class ApplicationsController < ApplicationController


    def index
      @applications = Application.all
    end

    def show
      @application = Application.find params[:id]
    end

    def new
      @application = Application.new
    end

    def create
      application = Application.create application_params
      redirect_to applications_path
    end

    def edit
      @application = Application.find params[:id]
    end

    def update
      application = Application.find params[:id]
      application.update application_params
      redirect_to application_path
    end

    def destroy
      application = Application.find params[:id]
      application.destroy
      redirect_to applications_path
    end
    private
    def application_params
      params.require(:application).permit(:name, :resume, :cover_letter, :job_id, :seeker_id)
    end
  end
