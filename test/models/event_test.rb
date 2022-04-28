require "test_helper"

class EventTest < ActiveSupport::TestCase

  # Title

  test "Invalid if title is less than 3 caracters" do
    event = Event.new(title: "s")
    event.valid?
    assert_not event.errors[:title].empty?
  end

  test "Invalid if title is greater than 100 caracters" do
    event = Event.new(title: "s" * 101)
    event.valid?
    assert_not event.errors[:title].empty?
  end

  test "Valid if title is between 3 and 100 caracters" do
    event = Event.new(title: "s" * 50)
    event.valid?
    assert_empty event.errors[:title]
  end

  # Description

  test "Invalid if description is greater 600 caracters" do
    event = Event.new(description: "s" * 601)
    event.valid?
    assert_not event.errors[:description].empty?
  end

  test "Valid if description is less or equal 600 caracters" do
    event = Event.new(description: "s" * 300)
    event.valid?
    assert_empty event.errors[:description]
  end

  # Starts_at

  test "Invalid if starts_at is less or equal than date current" do
    event = Event.new(starts_at: Time.current)
    event.valid?
    assert_not event.errors[:starts_at].empty?
  end

  test "Valid if starts_at is greater than date current" do
    event = Event.new(starts_at: Time.current + 1.hour)
    event.valid?
    assert_empty event.errors[:starts_at]
  end

  # Ends_at

  test "Invalid if ends_at is less or equal than starts_at" do
    event = Event.new(
      starts_at: Time.current + 1.day,
      ends_at: Time.current + 1.hour,
    )
    event.valid?
    assert_not event.errors[:ends_at].empty?
  end

  test "Valid if ends_at is greater than starts_at" do
    event = Event.new(
      starts_at: Time.current + 1.hour,
      ends_at: Time.current + 1.day,
    )
    event.valid?
    assert_empty event.errors[:ends_at]
  end

  # Created_by_id

  test "Invalid if created_by_id is nil" do
    event = Event.new(created_by_id: nil)
    event.valid?
    assert_not event.errors[:created_by_id].empty?
  end

  test "Valid if created_by_id not is nil" do
    event = Event.new(created_by_id: 3)
    event.valid?
    assert_empty event.errors[:created_by_id]
  end
end
