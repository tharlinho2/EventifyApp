require "test_helper"

class EventsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @user = users(:user_001)
    sign_in @user

    @event = events(:event_001)
  end

  # Index

  test "should get index" do
    get :index
    assert_response :success
  end

  # New

  test "should get new" do
    get :new
    assert_response :success
  end

  # Show

  test "get show responds with unauthorized" do
    get :show, params: { id: events(:event_001).id }
    assert_redirected_to events_url
    assert_equal "Não autorizado!", flash[:alert]
  end

  # Create

  test "should create event" do
    assert_difference("Event.count") do
      post :create, params: { event: {
                      title: @event.title,
                      description: @event.description,
                      starts_at: @event.starts_at,
                      ends_at: @event.ends_at,
                      created_by: @user.id,
                    } }
    end
    assert_redirected_to event_url(Event.last)
    assert_equal "Evento criado com sucesso!!", flash[:notice]
  end

  # Edit

  test "should get edit" do
    get :edit, params: { id: events(:event_001).id }
    assert_response :success
  end

  # Update

  test "patch update action" do
    patch :update, params: { id: events(:event_001).id, event: {
                     title: @event.title,
                     description: @event.description,
                     starts_at: @event.starts_at,
                     ends_at: @event.ends_at,
                     created_by: @user.id,
                   } }

    assert_response :success
  end

  # Destroy

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete :destroy, params: { id: events(:event_001).id }
    end

    assert_redirected_to events_url
    assert_equal "Evento deletado com sucesso!!", flash[:notice]
  end
end
