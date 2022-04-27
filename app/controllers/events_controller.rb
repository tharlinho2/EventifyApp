class EventsController < ApplicationController
  before_action :set_event, only: %i[ edit update destroy ]
  include ApplicationHelper

  def index
    user = User.find(current_user.id)
    @events = user.events
  end

  def show
    if set_event.created_by_id == current_user.id
      @reminder = current_user.reminders.new
    else
      redirect_to events_url, alert: ["Não autorizado!"]
    end
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params.merge(created_by: current_user))

    if @event.save
      redirect_to event_url(@event), notice: ["Evento criado com sucesso!!"]
    else
      flash.now[:alert] = @event.errors.full_messages
      render :new
    end
  end

  def update
    if @event.update(event_params)
      updateRemindAt(@event)
      redirect_to event_url(@event), notice: ["Evento atualizado com sucesso!!"]
    else
      flash.now[:alert] = @event.errors.full_messages
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: ["Evento deletado com sucesso!!"]
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :starts_at, :ends_at)
  end
end
