class ProfessorsController < ApplicationController
  before_action :set_professor, only: %i[show edit destroy update]
  def index
    @professors = Professor.all
  end

  def new
    @professor = Professor.new
  end

  def show
  end

  def edit
  end

  def create
    @professor = Professor.new(professor_params)
    if @professor.save
      redirect_to @professor
    else
      render 'new'
    end
  end

  def update
    if @professor.update(professor_params)
      redirect_to @professor
    else
      render 'edit'
    end
  end

  def destroy
    @professor.destroy
    redirect_to professors_path
  end

  private

  def set_professor
    @professor = Professor.find(params[:id])
  end

  def professor_params
    params.require(:professor).permit(:names, :surnames, :salary,
                                      :academic_degree, :buena_onda,
                                      :is_chavorruco, :department_id)

  end
end
