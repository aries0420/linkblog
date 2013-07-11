class HelpfullinksController < ApplicationController
  # GET /helpfullinks
  # GET /helpfullinks.json
  def index
    @helpfullinks = Helpfullink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @helpfullinks }
    end
  end

  # GET /helpfullinks/1
  # GET /helpfullinks/1.json
  def show
    @helpfullink = Helpfullink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @helpfullink }
    end
  end

  # GET /helpfullinks/new
  # GET /helpfullinks/new.json
  def new
    @helpfullink = Helpfullink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @helpfullink }
    end
  end

  # GET /helpfullinks/1/edit
  def edit
    @helpfullink = Helpfullink.find(params[:id])
  end

  # POST /helpfullinks
  # POST /helpfullinks.json
  def create
    @helpfullink = Helpfullink.new(params[:helpfullink])

    respond_to do |format|
      if @helpfullink.save
        format.html { redirect_to @helpfullink, notice: 'Helpfullink was successfully created.' }
        format.json { render json: @helpfullink, status: :created, location: @helpfullink }
      else
        format.html { render action: "new" }
        format.json { render json: @helpfullink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /helpfullinks/1
  # PUT /helpfullinks/1.json
  def update
    @helpfullink = Helpfullink.find(params[:id])

    respond_to do |format|
      if @helpfullink.update_attributes(params[:helpfullink])
        format.html { redirect_to @helpfullink, notice: 'Helpfullink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @helpfullink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helpfullinks/1
  # DELETE /helpfullinks/1.json
  def destroy
    @helpfullink = Helpfullink.find(params[:id])
    @helpfullink.destroy

    respond_to do |format|
      format.html { redirect_to helpfullinks_url }
      format.json { head :no_content }
    end
  end
end
