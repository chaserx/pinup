class PinsController < ApplicationController
  # GET /pins
  # GET /pins.xml
  def index
    @pins = Pin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pins }
    end
  end

  # GET /pins/1
  # GET /pins/1.xml
  def show
    @pin = Pin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pin }
    end
  end

  # GET /pins/new
  # GET /pins/new.xml
  def new
    @pin = Pin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pin }
    end
  end

  # GET /pins/1/edit
  def edit
    @pin = Pin.find(params[:id])
  end

  # POST /pins
  # POST /pins.xml
  def create
    @pin = Pin.new(params[:pin])

    respond_to do |format|
      if @pin.save
        format.html { redirect_to(@pin, :notice => 'Pin was successfully created.') }
        format.xml  { render :xml => @pin, :status => :created, :location => @pin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pins/1
  # PUT /pins/1.xml
  def update
    @pin = Pin.find(params[:id])

    respond_to do |format|
      if @pin.update_attributes(params[:pin])
        format.html { redirect_to(@pin, :notice => 'Pin was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.xml
  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy

    respond_to do |format|
      format.html { redirect_to(pins_url) }
      format.xml  { head :ok }
    end
  end
end
