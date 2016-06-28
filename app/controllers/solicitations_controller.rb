class SolicitationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solicitation, only: [:show, :edit, :update]

  def index
    @solicitations = Solicitation.all
  end

  def new
    @solicitation = Solicitation.new
  end

  def create
    @solicitation = Solicitation.create(complaint_params)
    redirect_to solicitation_path(@solicitation)
  end

  def update
    @solicitation.update(complaint_params)
    redirect_to solicitation_path(@solicitation)
  end

  def show
  end

  def edit
  end

  private

  def set_solicitation
    @solicitation = Solicitation.find(params[:id])
  end

  def complaint_params
    params.require(:solicitation)
          .permit(:subject, :content)
  end
end
