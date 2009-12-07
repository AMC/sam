class AnnouncementsController < ApplicationController
  filter_resource_access
  
  def index
    @announcements = Announcement.all
  end
  
  def show
    @announcement = Announcement.find(params[:id])
  end
  
  def new
    @announcement = Announcement.new
  end
  
  def create
    @announcement = Announcement.new(params[:announcement])
    if @announcement.save
      flash[:notice] = "Successfully created announcement."
      redirect_to @announcement
    else
      render :action => 'new'
    end
  end
  
  def edit
    @announcement = Announcement.find(params[:id])
  end
  
  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update_attributes(params[:announcement])
      flash[:notice] = "Successfully updated announcement."
      redirect_to @announcement
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    flash[:notice] = "Successfully destroyed announcement."
    redirect_to announcements_url
  end
end
