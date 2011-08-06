class ProgramasController < ApplicationController
  # GET /programas
  # GET /programas.xml
  def index
    @programas = Programa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @programas }
    end
  end

  # GET /programas/1
  # GET /programas/1.xml
  def show
    @programa = Programa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @programa }
    end
  end

  # GET /programas/new
  # GET /programas/new.xml
  def new
    @programa = Programa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @programa }
    end
  end

  # GET /programas/1/edit
  def edit
    @programa = Programa.find(params[:id])
  end

  # POST /programas
  # POST /programas.xml
  def create
    @programa = Programa.new(params[:programa])

    respond_to do |format|
      if @programa.save
        flash[:notice] = 'Programa was successfully created.'
        format.html { redirect_to(@programa) }
        format.xml  { render :xml => @programa, :status => :created, :location => @programa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @programa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programas/1
  # PUT /programas/1.xml
  def update
    @programa = Programa.find(params[:id])

    respond_to do |format|
      if @programa.update_attributes(params[:programa])
        flash[:notice] = 'Programa was successfully updated.'
        format.html { redirect_to(@programa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @programa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programas/1
  # DELETE /programas/1.xml
  def destroy
    @programa = Programa.find(params[:id])
    @programa.destroy

    respond_to do |format|
      format.html { redirect_to(programas_url) }
      format.xml  { head :ok }
    end
  end
end
