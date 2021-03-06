class EventsController < ApplicationController
	#TODO figue out how to do authentication with android app
	 skip_before_filter :verify_authenticity_token

	def index
		@events = Event.all
	end

	def create
		@event = Event.new(event_params)

		respond_to do |format|
			if @event.save
				# format.json{render action: 'index', formats: 'html'}
				# redirect_to action: 'index'
				format.json{render plain: 'success'}
			 else
				format.json {render json: @event.errors, status: :unprocessable_entity}
			end
		end
	end

	# def create
 #      @project = Project.new(project_params)

 #      respond_to do |format|
 #        if @project.save
 #          format.html { redirect_to @project, notice: 'Project was successfully created.' }
 #          format.json { render action: 'show', status: :created, location: @project }
 #        else
 #          format.html { render action: 'new' }
 #          format.json { render json: @project.errors, status: :unprocessable_entity }
 #        end
 #      end
 #    end

    private
    	def event_params
				#TODO figure out a more cleaner way of mapping camel_case to snake_case
				params[:event][:event_date] = params[:eventDate] unless params[:event].nil?
    		params.require(:event).permit(:latitude,:longitude,:status,:event_date)
    	end
end
