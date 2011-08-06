class AvaliacaosController < ApplicationController
  # GET /avaliacaos
  # GET /avaliacaos.xml
  def index
    @avaliacaos = Avaliacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @avaliacaos }
    end
  end

  # GET /avaliacaos/1
  # GET /avaliacaos/1.xml
  def show
    @avaliacao = Avaliacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @avaliacao }
    end
  end

  # GET /avaliacaos/new
  # GET /avaliacaos/new.xml
  def new
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @avaliacao }
    end
  end

  # GET /avaliacaos/1/edit
  def edit
    @avaliacao = Avaliacao.find(params[:id])
  end

  # POST /avaliacaos
  # POST /avaliacaos.xml
  def create
    @avaliacao = Avaliacao.new(params[:avaliacao])

    respond_to do |format|
      if @avaliacao.save
        flash[:notice] = 'Avaliacao was successfully created.'
        format.html { redirect_to(@avaliacao) }
        format.xml  { render :xml => @avaliacao, :status => :created, :location => @avaliacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @avaliacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /avaliacaos/1
  # PUT /avaliacaos/1.xml
  def update
    @avaliacao = Avaliacao.find(params[:id])

    respond_to do |format|
      if @avaliacao.update_attributes(params[:avaliacao])
        flash[:notice] = 'Avaliacao was successfully updated.'
        format.html { redirect_to(@avaliacao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @avaliacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacaos/1
  # DELETE /avaliacaos/1.xml
  def destroy
    @avaliacao = Avaliacao.find(params[:id])
    @avaliacao.destroy

    respond_to do |format|
      format.html { redirect_to(avaliacaos_url) }
      format.xml  { head :ok }
    end
  end
end
