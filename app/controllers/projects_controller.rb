class ProjectsController < ApplicationController
  layout 'application'
  
  # GET /projects
  # GET /projects.xml
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @projects = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @projects = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1/edit
  def edit
    @projects = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @projects = Project.new(params[:projects])

    respond_to do |format|
      if @projects.save
        flash[:notice] = 'Projects was successfully created.'
        format.html { redirect_to(@projects) }
        format.xml  { render :xml => @projects, :status => :created, :location => @projects }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @projects.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @projects = Project.find(params[:id])

    respond_to do |format|
      if @projects.update_attributes(params[:projects])
        flash[:notice] = 'Projects was successfully updated.'
        format.html { redirect_to(@projects) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @projects.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @projects = Project.find(params[:id])
    @projects.destroy

    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { head :ok }
    end
  end
end
