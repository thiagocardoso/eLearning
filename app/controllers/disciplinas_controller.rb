class DisciplinasController < ApplicationController
  # GET /disciplinas
  # GET /disciplinas.xml
  def index
    @disciplinas = Disciplina.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disciplinas }
    end
  end

  # GET /disciplinas/1
  # GET /disciplinas/1.xml
  def show
    @disciplina = Disciplina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disciplina }
    end
  end

  # GET /disciplinas/new
  # GET /disciplinas/new.xml
  def new
    @disciplina = Disciplina.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disciplina }
    end
  end

  # GET /disciplinas/1/edit
  def edit
    @disciplina = Disciplina.find(params[:id])
  end

  # POST /disciplinas
  # POST /disciplinas.xml
  def create
    @disciplina = Disciplina.new(params[:disciplina])

    respond_to do |format|
      if @disciplina.save
        flash[:notice] = 'Disciplina was successfully created.'
        format.html { redirect_to(@disciplina) }
        format.xml  { render :xml => @disciplina, :status => :created, :location => @disciplina }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disciplina.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disciplinas/1
  # PUT /disciplinas/1.xml
  def update
    @disciplina = Disciplina.find(params[:id])

    respond_to do |format|
      if @disciplina.update_attributes(params[:disciplina])
        flash[:notice] = 'Disciplina was successfully updated.'
        format.html { redirect_to(@disciplina) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disciplina.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplinas/1
  # DELETE /disciplinas/1.xml
  def destroy
    @disciplina = Disciplina.find(params[:id])
    @disciplina.destroy

    respond_to do |format|
      format.html { redirect_to(disciplinas_url) }
      format.xml  { head :ok }
    end
  end
end
