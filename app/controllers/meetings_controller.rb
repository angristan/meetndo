class MeetingsController < ApplicationController
  before_action :find_meeting, only: %i(show edit update destroy)
  before_action :authenticate_user!

  def index
    @meetings = Meeting.all.order('created_at DESC')
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @categories = Category.all
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id

    if @meeting.save
      current_user.attend(@meeting)
      flash[:notice] = 'New meeting successfully added!'
      redirect_to @meeting
    else
      flash[:error] = 'Wrong submission. Try again!'
      render :new
    end
  end

  def show
    results = Geocoder.search(@meeting.location)
    @lat = results.first.coordinates[0].to_s
    @lng = results.first.coordinates[1].to_s
  end

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

  def my_meetings
    @upcoming_meetings = current_user.active_attends
    @favorite_meetings = current_user.favorite_meetings
  end

  private

  def find_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(
      :cover_picture,
      :name,
      :description,
      :location,
      :event_date,
      :duration,
      :price,
      :max_attendees,
      :category_id
    )
  end
end
