class GalleryImagesController < ApplicationController
  layout 'application'
  
  before_filter :get_project, :except => [:index, :destroy, :edit, :update, :show]
  
  # GET /gallery_images
  # GET /gallery_images.xml
  def index
    if params[:project_id]
       @project = Project.find(params[:project_id])
       @gallery_images = @project.gallery_images
     else
       @gallery_images = GalleryImage.all
     end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gallery_images }
    end
  end

  # GET /gallery_images/1
  # GET /gallery_images/1.xml
  def show
    @gallery_image = GalleryImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gallery_image }
    end
  end

  # GET /gallery_images/new
  # GET /gallery_images/new.xml
  def new
    @gallery_image = @project.gallery_images.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gallery_image }
    end
  end

  # GET /gallery_images/1/edit
  def edit
    @gallery_image = GalleryImage.find(params[:id])
  end

  # POST /gallery_images
  # POST /gallery_images.xml
  def create
    @gallery_image = @project.gallery_images.new(params[:gallery_image])

    respond_to do |format|
      @gallery_image.save
        flash[:notice] = 'GalleryImage was successfully created.'
        format.html { redirect_to() }
        format.xml  { render :xml => @gallery_image, :status => :created, :location => [@project, @gallery_image] }
    end
  end

  # PUT /gallery_images/1
  # PUT /gallery_images/1.xml
  def update
    @gallery_image = GalleryImage.find(params[:id])

    respond_to do |format|
      if @gallery_image.update_attributes(params[:gallery_image])
        flash[:notice] = 'GalleryImage was successfully updated.'
        format.html { redirect_to() }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gallery_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_images/1
  # DELETE /gallery_images/1.xml
  def destroy
    @gallery_image = GalleryImage.find(params[:id])
    @gallery_image.destroy

    respond_to do |format|
      format.html { redirect_to(home_url) }
      format.xml  { head :ok }
    end
  end
  
  def all_images
    @project = Project.find(:all)
    @gallery_images = GalleryImage.find(:all)
  end
  
  def get_project
    @project = Project.find(params[:project_id])
  end
  
end
