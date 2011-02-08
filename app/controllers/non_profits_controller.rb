class NonProfitsController < ApplicationController
  # GET /non_profits
  # GET /non_profits.xml
  def index
    @non_profits = NonProfit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @non_profits }
    end
  end

  # GET /non_profits/1
  # GET /non_profits/1.xml
  def show
    @non_profit = NonProfit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @non_profit }
    end
  end

  # GET /non_profits/new
  # GET /non_profits/new.xml
  def new
    @non_profit = NonProfit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @non_profit }
    end
  end

  # GET /non_profits/1/edit
  def edit
    @non_profit = NonProfit.find(params[:id])
    @non_profit.password = ''
  end

  # POST /non_profits
  # POST /non_profits.xml
  def create
    handle_image_upload(params)
    
    to_create = params[:non_profit].clone
    to_create['password'] = (Digest::SHA2.new << to_create['password']).to_s
    
    @non_profit = NonProfit.new(params[:non_profit])

    respond_to do |format|
      if @non_profit.save
        format.html { redirect_to(@non_profit, :notice => 'Non profit was successfully created.') }
        format.xml  { render :xml => @non_profit, :status => :created, :location => @non_profit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @non_profit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /non_profits/1
  # PUT /non_profits/1.xml
  def update
    handle_image_upload(params)
    
    @non_profit = NonProfit.find(params[:id])

    respond_to do |format|
      to_update = params[:non_profit].clone
    if to_update['password'] != ''
      to_update['password'] = (Digest::SHA2.new << to_update['password']).to_s
    else
      to_update.delete('password') # remove password from update params
    end
      
      if @non_profit.update_attributes(params[:non_profit])
        format.html { redirect_to(@non_profit, :notice => 'Non profit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @non_profit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /non_profits/1
  # DELETE /non_profits/1.xml
  def destroy
    @non_profit = NonProfit.find(params[:id])
    @non_profit.destroy

    respond_to do |format|
      format.html { redirect_to(non_profits_url) }
      format.xml  { head :ok }
    end
  end
  
  private

  def handle_image_upload(params)
    if params[:image]
      uploaded_io = params[:image]
      File.open(Rails.root.join('public', 'images','non_profits',
          uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      params[:non_profit]['image'] = uploaded_io.original_filename
    end
  end
  
end
