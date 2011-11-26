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
    if params[:id]
      @questao = Questao.find(params[:id])
      @alternativas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao", 
{:condicao => @questao.id}], :order => "sequencia")
      @colunas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao and questao_alternativas_id is not null", 
{:condicao => @questao.id}], :order => "sequencia")  
    else
      @questao = Questao.new    
      @alternativas = QuestaoAlternativas.new
    end

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
        #format.html { redirect_to(@questao) }
        format.html { redirect_to :action => "new", :id => @questao.id}
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
        #format.html { redirect_to(@questao) }
        format.html { redirect_to :action => "new", :id => @questao.id}
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
  
  def addquestaoobjetiva
    @alternativa = QuestaoAlternativas.new(params[:alternativa])
    
    ult_alternativa = QuestaoAlternativas.find(:last, :conditions => ["questao_id = :condicao", 
{:condicao => @alternativa.questao_id}], :order => "sequencia")

    if ult_alternativa
      @alternativa.sequencia = ult_alternativa.sequencia + 1
    else
      @alternativa.sequencia = 1
    end
    
    if @alternativa.save
      @alternativas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao", 
{:condicao => @alternativa.questao_id}], :order => "sequencia")    
      
      render :partial => 'questao_objetiva', :locals => { :alternativas => @alternativas }
    end
  end
  
  def destroyquestaoobjetiva
    @alternativa = QuestaoAlternativas.find(params[:id])
    questao_id = @alternativa.questao_id
    @alternativa.destroy    
    
    @alternativas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao", 
{:condicao => questao_id}], :order => "sequencia")
      
    render :partial => 'questao_objetiva', :locals => { :alternativas => @alternativas }    
  end  
  
  def addalternativaprincipal
    @alternativa = QuestaoAlternativas.new(:questao_id => params[:coluna][:questao_id], :descricao => params[:coluna][:relacionada])
    @alternativa.save

    principal = QuestaoAlternativas.new(:questao_id => params[:coluna][:questao_id], :descricao => params[:coluna][:principal], :questao_alternativas_id => @alternativa.id)        
        
    ult_alternativa = QuestaoAlternativas.find(:last, :conditions => ["questao_id = :condicao and sequencia is not null", 
{:condicao => @alternativa.questao_id}], :order => "sequencia")

    if ult_alternativa      
      principal.sequencia = ult_alternativa.sequencia + 1
      @alternativa.sequencia = ult_alternativa.sequencia + 1
    else
      principal.sequencia = 1
      @alternativa.sequencia = 1      
    end
    
    if principal.save
      @alternativa.save
      @colunas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao and questao_alternativas_id is not null", 
{:condicao => principal.questao_id}], :order => "sequencia")    
      
      render :partial => 'questao_colunas', :locals => { :colunas => @colunas }
    end
  end
  
  def destroyquestaocoluna
    @alternativa = QuestaoAlternativas.find(params[:id])
    questao_id = @alternativa.questao_id
    @relacionada = QuestaoAlternativas.find(@alternativa.questao_alternativas_id)
    @alternativa.destroy    
    @relacionada.destroy
    
    @colunas = QuestaoAlternativas.all(:conditions => ["questao_id = :condicao and questao_alternativas_id is not null", 
{:condicao => questao_id}], :order => "sequencia")    
      
    render :partial => 'questao_colunas', :locals => { :colunas => @colunas }    
  end   
end
