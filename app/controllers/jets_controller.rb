class JetsController < ApplicationController
  # GET /jets
  # GET /jets.json
  def index
    @jets = Jet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jets }
    end
  end

  # GET /jets/1
  # GET /jets/1.json
  def show
    @jet = Jet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jet }
    end
  end

  # GET /jets/new
  # GET /jets/new.json
  def new
    @jet = Jet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jet }
    end
  end

  # GET /jets/1/edit
  def edit
    @jet = Jet.find(params[:id])
  end

  # POST /jets
  # POST /jets.json
  def create
    @jet = Jet.new(params[:jet])

    respond_to do |format|
      if @jet.save
        format.html { redirect_to @jet, notice: 'Jet was successfully created.' }
        format.json { render json: @jet, status: :created, location: @jet }
      else
        format.html { render action: "new" }
        format.json { render json: @jet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jets/1
  # PUT /jets/1.json
  def update
    @jet = Jet.find(params[:id])

    respond_to do |format|
      if @jet.update_attributes(params[:jet])
        format.html { redirect_to @jet, notice: 'Jet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jets/1
  # DELETE /jets/1.json
  def destroy
    @jet = Jet.find(params[:id])
    @jet.destroy

    respond_to do |format|
      format.html { redirect_to jets_url }
      format.json { head :no_content }
    end
  end
end