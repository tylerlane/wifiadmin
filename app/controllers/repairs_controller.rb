class RepairsController < ApplicationController
  before_filter :login_required

  # GET /repairs
  # GET /repairs.xml
  def index
    if params[:completed].nil?
      @repairs = Repair.find(:all, :conditions=>[ "completed = 0"], :order => "created_at ASC" )
    else
      if params[:completed] == "all"
        @repairs = Repair.find(:all, :order=> "created_at ASC" )
      else
        @repairs = Repair.find(:all, :conditions => [ "completed = ?", params[:completed]], :order => "created_at ASC" )
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repairs }
    end
  end

  # GET /repairs/1
  # GET /repairs/1.xml
  def show
    @repair = Repair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repair }
    end
  end

  # GET /repairs/new
  # GET /repairs/new.xml
  def new
    @repair = Repair.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repair }
    end
  end

  # GET /repairs/1/edit
  def edit
    @repair = Repair.find(params[:id])
  end

  # POST /repairs
  # POST /repairs.xml
  def create
    @repair = Repair.new(params[:repair])

    respond_to do |format|
      if @repair.save
        flash[:notice] = 'Repair was successfully created.'
        format.html { redirect_to(@repair) }
        format.xml  { render :xml => @repair, :status => :created, :location => @repair }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repairs/1
  # PUT /repairs/1.xml
  def update
    @repair = Repair.find(params[:id])

    respond_to do |format|
      if @repair.update_attributes(params[:repair])
        flash[:notice] = 'Repair was successfully updated.'
        format.html { redirect_to(@repair) }
        format.xml  { head :ok }
        format.js { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repair.errors, :status => :unprocessable_entity }
        format.js   { head :unprocessable_entity }
      end
    end
  end

  # DELETE /repairs/1
  # DELETE /repairs/1.xml
  def destroy
    @repair = Repair.find(params[:id])
    @repair.destroy

    respond_to do |format|
      format.html { redirect_to(repairs_url) }
      format.xml  { head :ok }
    end
  end
end
