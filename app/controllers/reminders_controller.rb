class RemindersController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @reminder = current_user.reminders.new(reminder_params)
    event = Event.find(@reminder.event_id)
    event.starts_at

    @reminder.reminder_at = @reminder.calculateDate(
      @reminder.time_value,
      @reminder.time_unit,
      event.starts_at
    ) if @reminder.time_value?

    if @reminder.reminder_at? && @reminder.reminder_at < Time.now
      @event = @reminder.event
      flash.now[:alert] = "Data do lembrete não pode ser menor que a data atual!!"
      render "events/show"
    elsif @reminder.save
      redirect_to @reminder.event, notice: "Lembrete criado com sucesso!!"
    else
      @event = @reminder.event
      flash.now[:alert] = @reminder.errors.full_messages
      render "events/show"
    end
  end

  private

  def reminder_params
    params.require(:reminder).permit(:event_id, :time_value, :time_unit, :reminder_at)
  end

  def calculateDate(value, time_unit, starts_at)
    case time_unit
    when "MINUTE"
      return starts_at - value.minutes
    when "HOUR"
      return starts_at - value.hours
    when "DAY"
      return starts_at - value.day
    when "WEEK"
      return starts_at - value.week
    end
  end
end
