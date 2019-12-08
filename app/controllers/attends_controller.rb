class AttendsController < ApplicationController
  before_action :authenticate_user!

  def create
    @meeting = Meeting.find(params[:attended_meeting_id])
    current_user.attend(@meeting)

    redirect_to @meeting
  end

  def destroy
    @meeting = Attend.find(params[:id]).attended_meeting
    current_user.unattend(@meeting)

    redirect_to @meeting
  end
end
