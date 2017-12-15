class RegistrationsController < ApplicationController
    before_action :authenticate_user!
  before_action :load_event

  def create
    @registration = current_user.registrations.create(registration_params.merge({
     event:  @event }))

    redirect_to @registration.event, notice: "Thank you for registering!"
  end

  private

  def registration_params
    params.require(:registration).permit(:starts_at, :ends_at, :total)
  end

  def load_event
    @event = Event.find(params[:event_id])
  end
end
