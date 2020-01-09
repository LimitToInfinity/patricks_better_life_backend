class EventsController < ApplicationController
    
    def index
        @events = Event.all
        render json: EventSerializer.new(@events)
    end

    def create
        @event = Event.create(event_params)

        render json: EventSerializer.new(@event)
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:name, :description, 
            :datetime, :user
        ).merge(user: User.find(1))
    end

end