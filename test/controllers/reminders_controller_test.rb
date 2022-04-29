require "test_helper"

class RemindersControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @user = users(:user_001)
    sign_in @user

    @reminder = reminders(:reminder_001)
  end

  # Create

  test "should create reminder" do
    assert_difference("Reminder.count") do
      post :create, params: { reminder: {
                      event_id: @reminder.event_id,
                      time_value: @reminder.time_value,
                      time_unit: @reminder.time_unit,
                      reminder_at: @reminder.reminder_at,
                      user_id: @reminder.user_id,
                    } }
    end
    assert_redirected_to event_url(Event.last)
    assert_equal "Lembrete criado com sucesso!!", flash[:notice]
  end

  # Destroy

  test "should destroy reminder" do
    assert_difference("Reminder.count", -1) do
      delete :destroy, params: { id: reminders(:reminder_001).id }
    end

    assert_response :success
  end
end
