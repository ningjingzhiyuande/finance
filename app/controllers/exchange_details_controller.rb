class ExchangeDetailsController < ApplicationController
  # GET /exchange_details
  # GET /exchange_details.xml
  def index
    @exchange_details = ExchangeDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exchange_details }
    end
  end

  # GET /exchange_details/1
  # GET /exchange_details/1.xml
  def show
    @exchange_detail = ExchangeDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exchange_detail }
    end
  end

  # GET /exchange_details/new
  # GET /exchange_details/new.xml
  def new
    @exchange_detail = ExchangeDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exchange_detail }
    end
  end

  # GET /exchange_details/1/edit
  def edit
    @exchange_detail = ExchangeDetail.find(params[:id])
  end

  # POST /exchange_details
  # POST /exchange_details.xml
  def create
    @exchange_detail = ExchangeDetail.new(params[:exchange_detail])

    respond_to do |format|
      if @exchange_detail.save
        format.html { redirect_to(@exchange_detail, :notice => 'Exchange detail was successfully created.') }
        format.xml  { render :xml => @exchange_detail, :status => :created, :location => @exchange_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exchange_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exchange_details/1
  # PUT /exchange_details/1.xml
  def update
    @exchange_detail = ExchangeDetail.find(params[:id])

    respond_to do |format|
      if @exchange_detail.update_attributes(params[:exchange_detail])
        format.html { redirect_to(@exchange_detail, :notice => 'Exchange detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exchange_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exchange_details/1
  # DELETE /exchange_details/1.xml
  def destroy
    @exchange_detail = ExchangeDetail.find(params[:id])
    @exchange_detail.destroy

    respond_to do |format|
      format.html { redirect_to(exchange_details_url) }
      format.xml  { head :ok }
    end
  end
end
