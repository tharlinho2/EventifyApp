class RemindersController < ApplicationController
  before_action :set_reminder, only: %i[ destroy ]
  include ApplicationHelper

  def new
    @event = Event.new
  end

  def create
    @reminder = current_user.reminders.new(reminder_params)

    createRemindAt(@reminder) if @reminder.time_value?

    if @reminder.save
      redirect_to @reminder.event, notice: "Lembrete criado com sucesso!!"
    else
      @event = @reminder.event
      flash.now[:alert] = @reminder.errors.full_messages
      render "events/show"
    end
  end

  def destroy
    @event = @reminder.event
    if @reminder.destroy
      render "events/show"
    end
  end

  private

  def set_reminder
    @reminder = Reminder.find(params[:id])
  end

  def reminder_params
    params.require(:reminder).permit(:event_id, :time_value, :time_unit, :reminder_at)
  end
end
