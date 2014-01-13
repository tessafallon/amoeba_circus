class AmoebasController < ApplicationController
  # GET /amoebas
  # GET /amoebas.json
  def index
    @amoebas = Amoeba.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @amoebas }
    end
  end

  # GET /amoebas/1
  # GET /amoebas/1.json
  def show
    @amoeba = Amoeba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @amoeba }
    end
  end

  # GET /amoebas/new
  # GET /amoebas/new.json
  def new
    @amoeba = Amoeba.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @amoeba }
    end
  end

  # GET /amoebas/1/edit
  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  # POST /amoebas
  # POST /amoebas.json
  def create
    @amoeba = Amoeba.new(params[:amoeba])

    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully created.' }
        format.json { render json: @amoeba, status: :created, location: @amoeba }
      else
        format.html { render action: "new" }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /amoebas/1
  # PUT /amoebas/1.json
  def update
    @amoeba = Amoeba.find(params[:id])

    respond_to do |format|
      if @amoeba.update_attributes(params[:amoeba])
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amoebas/1
  # DELETE /amoebas/1.json
  def destroy
    @amoeba = Amoeba.find(params[:id])
    @amoeba.destroy

    respond_to do |format|
      format.html { redirect_to amoebas_url }
      format.json { head :no_content }
    end
  end

#POST amoebas/split/1
  def split
    @amoeba.split!
    redirect_to amoebas_path
  end
end
