class ComplaintsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_complaint, only: [:show, :edit, :update]

  def index
    @complaints = Complaint.all
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.create(complaint_params)
    render @complaint
  end

  def update
    @complaint.update(complaint_params)
    redirect_to complaint_path(@complaint)
  end

  def show
  end

  def edit
  end

  private

  def set_complaint
    @complaint = Complaint.find(params[:id])
  end

  def complaint_params
    params.require(:complaint)
          .permit(:subject, :complaint_type, :content)
  end
end
