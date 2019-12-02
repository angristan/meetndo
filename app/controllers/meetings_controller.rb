class MeetingsController < ApplicationController
  before_action :find_meeting, only: %i(show edit update destroy)

  def index
    @meetings = Meeting.all.order('created_at DESC')
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      flash[:notice] = 'New meeting successfully added!'
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @meeting.update(meeting_params)
      redirect_to @meeting
    else
      flash[:alert] = 'Wrong submission. Try again!'
      render :edit
    end
  end

  def destroy
    @meeting.destroy
    flash[:notice] = 'Meeting successfully deleted!'

    redirect_to meetings_path
  end

  private

  def find_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(
      :image_filename,
      :name,
      :description,
      :location,
      :event_date,
      :duration,
      :price,
      :max_attendees
    )
  end
end
