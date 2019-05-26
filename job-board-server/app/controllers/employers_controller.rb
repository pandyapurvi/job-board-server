class EmployersController < ApplicationController

  def index
    @employers = Employer.all
  end

  def show
    @employer = Employer.find params[:id]
  end

  def new
    @employer = Employer.new
  end

  def create
    employer = Employer.create employer_params
    redirect_to employers_path
  end

  def edit
    @employer = Employer.find params[:id]
  end

  def update
    employer = Employer.find params[:id]
    employer.update employer_params
    redirect_to employer_path
  end

  def destroy
    employer = Employer.find params[:id]
    employer.destroy
    redirect_to employers_path
  end
  private
  def employer_params
    params.require(:employer).permit(:company_name, :compamy_type, :size, :no_employee, :description, :city, :website, :vacancy, :job_id, :user_id)
  end
end
