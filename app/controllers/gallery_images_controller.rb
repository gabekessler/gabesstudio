class GalleryImagesController < ApplicationController
  layout 'application'
  
  # GET /gallery_images
  # GET /gallery_images.xml
  def index
    @gallery_images = GalleryImage.all

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
    @gallery_image = GalleryImage.new

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
    @gallery_image = GalleryImage.new(params[:gallery_image])

    respond_to do |format|
      if @gallery_image.save
        flash[:notice] = 'GalleryImage was successfully created.'
        format.html { redirect_to(@gallery_image) }
        format.xml  { render :xml => @gallery_image, :status => :created, :location => @gallery_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gallery_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gallery_images/1
  # PUT /gallery_images/1.xml
  def update
    @gallery_image = GalleryImage.find(params[:id])

    respond_to do |format|
      if @gallery_image.update_attributes(params[:gallery_image])
        flash[:notice] = 'GalleryImage was successfully updated.'
        format.html { redirect_to(@gallery_image) }
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
      format.html { redirect_to(gallery_images_url) }
      format.xml  { head :ok }
    end
  end
end
