class Topic2sController < ApplicationController
  # GET /topic2s
  # GET /topic2s.json
  def index
    @topic2s = Topic2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topic2s }
    end
  end

  # GET /topic2s/1
  # GET /topic2s/1.json
  def show
    @topic2 = Topic2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topic2 }
    end
  end

  # GET /topic2s/new
  # GET /topic2s/new.json
  def new
    @topic2 = Topic2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @topic2 }
    end
  end

  # GET /topic2s/1/edit
  def edit
    @topic2 = Topic2.find(params[:id])
  end

  # POST /topic2s
  # POST /topic2s.json
  def create
    @topic2 = Topic2.new(params[:topic2])

    respond_to do |format|
      if @topic2.save
        format.html { redirect_to @topic2, notice: 'Topic2 was successfully created.' }
        format.json { render json: @topic2, status: :created, location: @topic2 }
      else
        format.html { render action: "new" }
        format.json { render json: @topic2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /topic2s/1
  # PUT /topic2s/1.json
  def update
    @topic2 = Topic2.find(params[:id])

    respond_to do |format|
      if @topic2.update_attributes(params[:topic2])
        format.html { redirect_to @topic2, notice: 'Topic2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @topic2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic2s/1
  # DELETE /topic2s/1.json
  def destroy
    @topic2 = Topic2.find(params[:id])
    @topic2.destroy

    respond_to do |format|
      format.html { redirect_to topic2s_url }
      format.json { head :no_content }
    end
  end
end
