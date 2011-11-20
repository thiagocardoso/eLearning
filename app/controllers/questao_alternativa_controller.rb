class QuestaoAlternativaController < ApplicationController
  def add
    @alternativa = QuestaoAlternativas.new(params[:alternativa])
    @alternativa.save

    render :nothing => true
  end

  def remove
    @alternativa.find(params[:alternativa])
    @alternativa.delete
  end
end
