class HomeBarController < ApplicationController

  def index
    #TODO: BUSCAR PELO NOME DO BAR - APENAS NOME QUE BATE COM O QUE ESTÁ SENDO PROCURADO
    #SÓ TEM Q CARREGAR O Q A PESSOA CLICOU NA PAGINA INICIAL,
    # N IMPORTA C POR ID OU NOME, MAS NA URL DEVE APARECER O NOME, SO ..
    @home_bar = HomeBar.first

    #@home_bar = HomeBar.find_all_by_name(get_current_bar_name)
    #@home_bar = HomeBar.find_all_by_name(params[:name]).first
  end

end