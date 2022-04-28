require "test_helper"

class ReminderTest < ActiveSupport::TestCase

  # Time_value

  test "Valid if time_value is between 1 and 100" do
    reminder = Reminder.new(time_value: 50)
    reminder.valid?
    assert_empty reminder.errors[:time_value]
  end

  test "Invalid if time_value is less than 1" do
    reminder = Reminder.new(time_value: 0)
    reminder.valid?
    assert_not reminder.errors[:time_value].empty?
  end

  test "Invalid if time_value is greater than 100" do
    reminder = Reminder.new(time_value: 101)
    reminder.valid?
    assert_not reminder.errors[:time_value].empty?
  end

  # Time_unit

  test "Invalid if time_unit is empty" do
    reminder = Reminder.new(time_unit: "")
    reminder.valid?
    assert_not reminder.errors[:time_unit].empty?
  end

  test "Valid if time_unit not empty" do
    reminder = Reminder.new(time_unit: "MINUTE")
    reminder.valid?
    assert_empty reminder.errors[:time_unit]
  end

  # Reminder_at

  test "Invalid if reminder_at is less or equal than date current" do
    reminder = Reminder.new(reminder_at: Time.current)
    reminder.valid?
    assert_not reminder.errors[:reminder_at].empty?
  end

  test "Valid if reminder_at is greater than date current" do
    reminder = Reminder.new(reminder_at: Time.current + 1.hour)
    reminder.valid?
    assert_empty reminder.errors[:reminder_at]
  end
end
