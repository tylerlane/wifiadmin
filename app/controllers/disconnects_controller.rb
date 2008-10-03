class DisconnectsController < ApplicationController
  before_filter :login_required
  # GET /disconnects
  # GET /disconnects.xml
  def index
    
    if params[:status].nil?
      @disconnects = Disconnect.find(:all, :conditions=>[ "status = ?", 'NEW'], :order => "created_at ASC" )
    else
      if params[:status] == "ALL"
        @disconnects = Disconnect.find(:all, :order=> "created_at ASC" )
      else
        @disconnects = Disconnect.find(:all, :conditions => [ "status = ?", params[:status]], :order => "created_at ASC" )
      end
    end

  # GET /disconnects/1
  # GET /disconnects/1.xml
  def show
    @disconnect = Disconnect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disconnect }
    end
  end

  # GET /disconnects/new
  # GET /disconnects/new.xml
  def new
    @disconnect = Disconnect.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disconnect }
    end
  end

  # GET /disconnects/1/edit
  def edit
    @disconnect = Disconnect.find(params[:id])
  end

  # POST /disconnects
  # POST /disconnects.xml
  def create
    @disconnect = Disconnect.new(params[:disconnect])

    respond_to do |format|
      if @disconnect.save
        flash[:notice] = 'Disconnect was successfully created.'
        format.html { redirect_to(@disconnect) }
        format.xml  { render :xml => @disconnect, :status => :created, :location => @disconnect }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disconnect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disconnects/1
  # PUT /disconnects/1.xml
  def update
    @disconnect = Disconnect.find(params[:id])

    respond_to do |format|
      if @disconnect.update_attributes(params[:disconnect])
        flash[:notice] = 'Disconnect was successfully updated.'
        format.html { redirect_to(@disconnect) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disconnect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disconnects/1
  # DELETE /disconnects/1.xml
  def destroy
    @disconnect = Disconnect.find(params[:id])
    @disconnect.destroy

    respond_to do |format|
      format.html { redirect_to(disconnects_url) }
      format.xml  { head :ok }
    end
  end

end
