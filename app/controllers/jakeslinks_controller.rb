class JakeslinksController < ApplicationController
  # GET /jakeslinks
  # GET /jakeslinks.json
  def index
    @jakeslinks = Jakeslink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jakeslinks }
    end
  end

  # GET /jakeslinks/1
  # GET /jakeslinks/1.json
  def show
    @jakeslink = Jakeslink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jakeslink }
    end
  end

  # GET /jakeslinks/new
  # GET /jakeslinks/new.json
  def new
    @jakeslink = Jakeslink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jakeslink }
    end
  end

  # GET /jakeslinks/1/edit
  def edit
    @jakeslink = Jakeslink.find(params[:id])
  end

  # POST /jakeslinks
  # POST /jakeslinks.json
  def create
    @jakeslink = Jakeslink.new(params[:jakeslink])

    respond_to do |format|
      if @jakeslink.save
        format.html { redirect_to @jakeslink, notice: 'Jakeslink was successfully created.' }
        format.json { render json: @jakeslink, status: :created, location: @jakeslink }
      else
        format.html { render action: "new" }
        format.json { render json: @jakeslink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jakeslinks/1
  # PUT /jakeslinks/1.json
  def update
    @jakeslink = Jakeslink.find(params[:id])

    respond_to do |format|
      if @jakeslink.update_attributes(params[:jakeslink])
        format.html { redirect_to @jakeslink, notice: 'Jakeslink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jakeslink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jakeslinks/1
  # DELETE /jakeslinks/1.json
  def destroy
    @jakeslink = Jakeslink.find(params[:id])
    @jakeslink.destroy

    respond_to do |format|
      format.html { redirect_to jakeslinks_url }
      format.json { head :no_content }
    end
  end
end
