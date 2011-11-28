class EfetuarAvaliacaoController < ApplicationController

  def index
    @avaliacao = Avaliacao.find_by_id(params[:id])

    @questoes = AvaliacaoQuestao.find_all_by_avaliacao_id(@avaliacao.id)
  end

  def listar
    @avaliacoes = Avaliacao.all
  end
  
end
