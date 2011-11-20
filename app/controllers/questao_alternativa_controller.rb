class QuestaoAlternativaController < ApplicationController
  def add
    @alternativa = QuestaoAlternativa.new(params[:alternativa])

    @alternativa.save
  end

  def remove
    @alternativa.find(params[:alternativa])
    @alternativa.delete
  end
end
