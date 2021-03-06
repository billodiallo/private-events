class VisitorsController < ApplicationController
  before_action :set_event, only: %i[show edit update]

  def create
    @event = Event.find(params[:event_id])
    if !@event.attendees.include? current_user
      current_user.attended_events += 1
      @event.attendees << current_user
    else
      flash[:alert] = 'You are already registered!'
    end

    return unless @event.save

    redirect_to events_path
    flash[:alert] = 'Added as Attendee'
  end

  def destroy
    @event = Event.find(params[:event_id])

    @user = User.find(params[:attendee_id])

    @user.attended_events.destroy(@event.id) if @user.attended_events.include? @event

    redirect_to events_path
  end
end
