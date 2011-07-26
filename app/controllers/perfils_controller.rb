class PerfilsController < ApplicationController
  # GET /perfils
  # GET /perfils.xml
  def index
    @perfils = Perfil.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @perfils }
    end
  end

  # GET /perfils/1
  # GET /perfils/1.xml
  def show
    @perfil = Perfil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @perfil }
    end
  end

  # GET /perfils/new
  # GET /perfils/new.xml
  def new
    @perfil = Perfil.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @perfil }
    end
  end

  # GET /perfils/1/edit
  def edit
    @perfil = Perfil.find(params[:id])
  end

  # POST /perfils
  # POST /perfils.xml
  def create
    @perfil = Perfil.new(params[:perfil])

    respond_to do |format|
      if @perfil.save
        flash[:notice] = 'Perfil was successfully created.'
        format.html { redirect_to(@perfil) }
        format.xml  { render :xml => @perfil, :status => :created, :location => @perfil }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @perfil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /perfils/1
  # PUT /perfils/1.xml
  def update
    @perfil = Perfil.find(params[:id])

    respond_to do |format|
      if @perfil.update_attributes(params[:perfil])
        flash[:notice] = 'Perfil was successfully updated.'
        format.html { redirect_to(@perfil) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @perfil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /perfils/1
  # DELETE /perfils/1.xml
  def destroy
    @perfil = Perfil.find(params[:id])
    @perfil.destroy

    respond_to do |format|
      format.html { redirect_to(perfils_url) }
      format.xml  { head :ok }
    end
  end
end
