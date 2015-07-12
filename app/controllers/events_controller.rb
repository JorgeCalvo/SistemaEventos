class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(title: params[:event][:title], body: params[:event][:body])
		@event.save
		redirect_to @event
	end
end