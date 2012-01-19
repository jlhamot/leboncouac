class MusiciansController < ApplicationController
  # GET /musicians
  # GET /musicians.json
  def index
    @musicians = Musician.all.find_all { |musician| musician.is_active }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @musicians }
    end
  end

  # GET /musicians/1
  # GET /musicians/1.json
  def show
    @musician = Musician.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @musician }
    end
  end

  # GET /musicians/new
  # GET /musicians/new.json
  def new
    @musician = Musician.new
    @instruments = Instrument.find(:all, :order => "name")

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @musician }
    end
  end

  # GET /musicians/1/edit
  def edit
    @musician = Musician.find(params[:id])
    @instruments = Instrument.find(:all, :order => "name")
  end

  # POST /musicians
  # POST /musicians.json
  def create
    @musician = Musician.new(params[:musician])
    @instruments = Instrument.find(:all, :order => "name")
    
    respond_to do |format|
      if @musician.save
        InscriptionMailer.subscribeDemand(@musician).deliver
        format.html { redirect_to @musician, notice: t(:Inscription_complete) }
        format.json { render json: @musician, status: :created, location: @musician }
      else
        format.html { render action: "new" }
        format.json { render json: @musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /musicians/1
  # PUT /musicians/1.json
  def update
    @musician = Musician.find(params[:id])

    respond_to do |format|
      if @musician.update_attributes(params[:musician])
        format.html { redirect_to @musician, notice: 'Musician was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicians/1
  # DELETE /musicians/1.json
  def destroy
    @musician = Musician.find(params[:id])
    @musician.destroy

    respond_to do |format|
      format.html { redirect_to musicians_url }
      format.json { head :ok }
    end
  end
  
  # GET /musicians/?:uuid
  def activation
    @musician = Musician.all.find { |musician| musician.uuid == params[:uuid] }
    @musician.set_active

    respond_to do |format|
       if @musician.save
         format.html { redirect_to home_index_url }
         format.json { head :ok }
       else
         format.html { render action: "activation" }
         format.json { render json: @musician.errors, status: :unprocessable_entity }
       end
    end
    
  end
end
