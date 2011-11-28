module EfetuarAvaliacaoHelper

  def monta_questao_html(questao)
    return "" if questao.blank?

    case questao.tipo
      when 0
        monta_questao_objetiva(questao)
      when 1
        monta_questao_relacionar_colunas(questao)
      when 2
        monta_questao_completar_lacunas(questao)
    end
  end

  def monta_questao_objetiva(questao)

    alternativas = QuestaoAlternativas.find_all_by_questao_id questao.id
    return "Não há alternativas para essa questão #{questao.id}" if alternativas.blank?
    
    html  = ""
    html += "<div class='questao_objetiva'>"
    html += "  <div class='questao_objetiva_enunciado'>"
    html += "    <h5>" + questao.titulo + "</h5>"
    html += "    <p>" + questao.descricao + "</p>"
    html += "  </div>"
    html += "  <div class = 'questao_objetiva-alternativas'>"
    alternativas.each do |a|
      html += "    <input type='radio' name='questao#{questao.id}' value='#{a.id}'>#{a.descricao}'</input><br/>"
    end
    html += "  </div>"
    html += "</div><br/>"
    
    return html
  end

  def monta_questao_relacionar_colunas(questao)
    return "monta_questao_relacionar_colunas"
  end

  def monta_questao_completar_lacunas(questao)
    return "monta_questao_completar_lacunas"
  end

end
