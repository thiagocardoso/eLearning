class AtividadesController < ApplicationController
  # GET /atividades
  # GET /atividades.xml
  def index
    @atividades = Atividade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atividades }
    end
  end

  # GET /atividades/1
  # GET /atividades/1.xml
  def show
    @atividade = Atividade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atividade }
    end
  end

  # GET /atividades/new
  # GET /atividades/new.xml
  def new
    @atividade = Atividade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atividade }
    end
  end

  # GET /atividades/1/edit
  def edit
    @atividade = Atividade.find(params[:id])
  end

  # POST /atividades
  # POST /atividades.xml
  def create
    @atividade = Atividade.new(params[:atividade])

    respond_to do |format|
      if @atividade.save
        flash[:notice] = 'Atividade was successfully created.'
        format.html { redirect_to(@atividade) }
        format.xml  { render :xml => @atividade, :status => :created, :location => @atividade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atividade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atividades/1
  # PUT /atividades/1.xml
  def update
    @atividade = Atividade.find(params[:id])

    respond_to do |format|
      if @atividade.update_attributes(params[:atividade])
        flash[:notice] = 'Atividade was successfully updated.'
        format.html { redirect_to(@atividade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atividade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atividades/1
  # DELETE /atividades/1.xml
  def destroy
    @atividade = Atividade.find(params[:id])
    @atividade.destroy

    respond_to do |format|
      format.html { redirect_to(atividades_url) }
      format.xml  { head :ok }
    end
  end
end
