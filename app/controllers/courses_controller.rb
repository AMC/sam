class CoursesController < ApplicationController
  filter_resource_access
  
  def index
    @courses = Course.find(:all)
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = "Successfully created course."
      redirect_to @course
    else
      render :action => 'new'
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      flash[:notice] = "Successfully updated course."
      redirect_to @course
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Successfully destroyed course."
    redirect_to courses_url
  end
end
