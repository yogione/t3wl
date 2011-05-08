class ReceiversController < ApplicationController
  # GET /receivers
  # GET /receivers.xml
  def index
    @receivers = Receiver.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @receivers }
    end
  end

  # GET /receivers/1
  # GET /receivers/1.xml
  def show
    @receiver = Receiver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @receiver }
    end
  end

  # GET /receivers/new
  # GET /receivers/new.xml
  def new
    @receiver = Receiver.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @receiver }
    end
  end

  # GET /receivers/1/edit
  def edit
    @receiver = Receiver.find(params[:id])
  end

  # POST /receivers
  # POST /receivers.xml
  def create
    @receiver = Receiver.new(params[:receiver])

    respond_to do |format|
      if @receiver.save
        format.html { redirect_to(@receiver, :notice => 'Receiver was successfully created.') }
        format.xml  { render :xml => @receiver, :status => :created, :location => @receiver }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @receiver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receivers/1
  # PUT /receivers/1.xml
  def update
    @receiver = Receiver.find(params[:id])

    respond_to do |format|
      if @receiver.update_attributes(params[:receiver])
        format.html { redirect_to(@receiver, :notice => 'Receiver was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @receiver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receivers/1
  # DELETE /receivers/1.xml
  def destroy
    @receiver = Receiver.find(params[:id])
    @receiver.destroy

    respond_to do |format|
      format.html { redirect_to(receivers_url) }
      format.xml  { head :ok }
    end
  end
end
