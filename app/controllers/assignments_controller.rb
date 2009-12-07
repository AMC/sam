class AssignmentsController < ApplicationController
  filter_resource_access
  
  def index
    @assignments = Assignment.all
  end
  
  def show
    @assignment = Assignment.find(params[:id])
  end
  
  def new
    @assignment = Assignment.new
  end
  
  def create
    @assignment = Assignment.new(params[:assignment])
    if @assignment.save
      flash[:notice] = "Successfully created assignment."
      redirect_to @assignment
    else
      render :action => 'new'
    end
  end
  
  def edit
    @assignment = Assignment.find(params[:id])
  end
  
  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update_attributes(params[:assignment])
      flash[:notice] = "Successfully updated assignment."
      redirect_to @assignment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    flash[:notice] = "Successfully destroyed assignment."
    redirect_to assignments_url
  end
end
