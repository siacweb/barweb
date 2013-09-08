class PrincipalController < ApplicationController

  def index
    #TODO: buscar só a página ativa
    @principals = Principal.all

    #TODO: selecionar soh alguns bares (de forma aleatoria ou não)
    @home_bars = HomeBar.all

    #@home_bar = HomeBar.find(params[:name])

    @home_bar = HomeBar.find_by_name(get_current_bar_name)
    #@home_bar = HomeBar.find_by_name(params[:name])

  end

  def contact
    render('layouts/contact')
  end

end