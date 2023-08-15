class PatientsController < ApplicationController
  
  def new
    @patient = Patient.new
  end

  def create
      @patient = Patient.new(params.require(:patient).permit(:first_name, :middle_name, :last_name, :date_of_birth, :status, :address, :city, :state, :zip_code))
      @patient.save
      redirect_to patient_path(@patient)
  end
  
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(params.require(:patient).permit(:first_name, :middle_name, :last_name, :date_of_birth, :status, :address, :city, :state, :zip_code))
      flash[:success] = "Patient updated!"
      redirect_to patient_path(@patient)
    else
      flash.now[:error] = "Patient update failed"
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    redirect_to patients_path
    @patient.destroy
  end

end
