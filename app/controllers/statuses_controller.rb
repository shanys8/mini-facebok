class StatusesController < ApplicationController
	def new
		@status = Status.new
	end

	def create
	  @status = Status.new(status_params)
	  if @status.save
	    redirect_to @status
	  else
	    render 'new'
	  end
	end

	def show
	  @status = Status.find(params[:id])
	end
 
	 def edit
	  @status = Status.find(params[:id])
	end

	def update
	  @status = Status.find(params[:id])
	 
	  if @status.update(status_params)
	    redirect_to @status
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @status = Status.find(params[:id])
	  @status.destroy
	 
	  redirect_to statuses_path
	end
		
	 def index
	  @statuses = Status.all
	end
	private
	  def status_params
	    params.require(:status).permit(:text)
	  end
end


