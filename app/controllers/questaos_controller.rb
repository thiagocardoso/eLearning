class QuestaosController < ApplicationController
  # GET /questaos
  # GET /questaos.xml
  def index
    @questaos = Questao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questaos }
    end
  end

  # GET /questaos/1
  # GET /questaos/1.xml
  def show
    @questao = Questao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @questao }
    end
  end

  # GET /questaos/new
  # GET /questaos/new.xml
  def new
    @questao = Questao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @questao }
    end
  end

  # GET /questaos/1/edit
  def edit
    @questao = Questao.find(params[:id])
  end

  # POST /questaos
  # POST /questaos.xml
  def create
    @questao = Questao.new(params[:questao])

    respond_to do |format|
      if @questao.save
        flash[:notice] = 'Questao was successfully created.'
        format.html { redirect_to(@questao) }
        format.xml  { render :xml => @questao, :status => :created, :location => @questao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @questao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questaos/1
  # PUT /questaos/1.xml
  def update
    @questao = Questao.find(params[:id])

    respond_to do |format|
      if @questao.update_attributes(params[:questao])
        flash[:notice] = 'Questao was successfully updated.'
        format.html { redirect_to(@questao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @questao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questaos/1
  # DELETE /questaos/1.xml
  def destroy
    @questao = Questao.find(params[:id])
    @questao.destroy

    respond_to do |format|
      format.html { redirect_to(questaos_url) }
      format.xml  { head :ok }
    end
  end
end
