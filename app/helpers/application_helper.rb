module ApplicationHelper
  def updateRemindAt(event)
    event.reminders.each do |reminder|
      reminder.reminder_at = calculateDate(reminder, event)
      reminder.save
    end
  end

  def createRemindAt(reminder)
    @event = Event.find(reminder.event_id)
    reminder.reminder_at = calculateDate(reminder, @event)
  end

  private

  def calculateDate(reminder, event)
    case reminder.time_unit
    when "MINUTE"
      return event.starts_at - reminder.time_value.minutes
    when "HOUR"
      return event.starts_at - reminder.time_value.hours
    when "DAY"
      return event.starts_at - reminder.time_value.day
    when "WEEK"
      return event.starts_at - reminder.time_value.week
    end
  end
end
